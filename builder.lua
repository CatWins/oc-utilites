--     Room digger by Tusk      --

local a = {...}
local robot = require("robot")
local side = require('sides')
local cfg = require('config')
local nav = require('lib/navigation')
local tool = require('lib/tool')
local mine = require('lib/mine')
local color = require('lib/color')
local fuel = require('lib/fuel')
local util = require('lib/utility')
local log = require('lib/log')
local ic = util.tryToLoad("inventory_controller")

if ic == nil then
  print("Необходим inventory_controller, без него работать не буду.")
  return false
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

if type(a[1]) == nil then
  print("Синтаксис: builder <blueprint_filename>")
  print("Папка для чертежей ./blueprints. Расширение - lua")
  return
end

local fname = a[1]
materials = {}

function analyze_size(bp)
  height = tablelength(bp)
  length = tablelength(bp[1])
  width = tablelength(bp[1][1])
  for i = 2, height do
    local t_length = tablelength(bp[i])
    if length ~= t_length then
      log.error("В вашем чертеже ошибка: слои разных размеров. z = "..i)
      return false
    end
  end
  for i = 1, height do
    for j = 1, length do
      local t_width = tablelength(bp[i][j])
      if width ~= t_width then
        log.error("В вашем чертеже ошибка: ряды разных размеров. z = "..i.."   y = "..j)
        return false
      end
    end
  end
  return true
end

function materialIsEqual(material, slot)
  if material == "air" then return false end
  stack = ic.getStackInInternalSlot(slot)
  if stack == nil then return false end
  for id in pairs(material) do
    if material[id] ~= stack[id] then return false end
  end
  return true
end

function analyze_materials(bp)
  for z = 1, height do
    for y = 1, length do
      for x = 1, width do
        if bp[z][y][x] ~= "air" then
          if materials[bp[z][y][x]] == nil then
            materials[bp[z][y][x]] = 1
          else
            materials[bp[z][y][x]] = materials[bp[z][y][x]] + 1
          end
        end
      end
    end
  end
end

function check_materials()
  for i = 1, cfg.INV_SIZE do
    for material, amount in pairs(materials) do
      if materialIsEqual(material, i) and material ~= "air" then
        materials[material] = materials[material] - ic.getStackInInternalSlot(i).size -- Тож хз
      end
    end
  end
  for material, amount in pairs(materials) do
    if amount > 0 and material ~= "air" then return false end
  end
  return true
end

function place_block(side, material)
  if material == "air" then return true end
  if materialIsEqual(material, robot.select()) then
    return robot.placeDown(side)
  else
    for i = 1, cfg.INV_SIZE do
      if materialIsEqual(material, i) then
        robot.select(i)
        return robot.placeDown(side)
      end
    end
  end
  log.error("Нужно больше "..block)
  return false
end

function build_row(y,z,backwards)
  for x = 1, width do
    if x == 1 or mine.forward() then
      if tool.swingDown() then
        if backwards then
          local placed = place_block(side.down, bp[z][y][width - x + 1])
        else
          local placed = place_block(side.down, bp[z][y][x])
        end
        if not place_block(side.down, bp[z][y][x]) then
          log.error("Блок не размещен. x = "..x.."  |  y = "..y)
        end
      else
        log.error("Не могу сломать блок. x = "..x.."  |  y = "..y)
      end
    else
      log.error("Не могу сломать блок. x = "..(x+1).."  |  y = "..y)
    end
  end
end

function build_layer(z)
  for y = 1, length do
    if y ~= 1 then
      if y%2==0 then
        nav.turnRight()
        if not mine.forward() then
          log.error("Не могу сломать блок. x = "..width.."  |  y = "..y.."  |  z = "..z)
        end
        nav.turnRight()
      else
        nav.turnLeft()
        if not mine.forward() then
          log.error("Не могу сломать блок. x =   |  y = "..y.."  |  z = "..z)
        end
        nav.turnLeft()
      end
    end
    if y%2==0 then
      build_row(y,z,true)
    else
      build_row(y,z)
    end
  end
end

-- xxx>
-- <xxx
-- xxx>
-- <xxx


function build_structure()
  for z = 1, height do
    if z ~= 1 then
      if length%2==0 then
        nav.turnRight()
        tool.swingUp()
        nav.up()
        for y = 1, length - 1 do
          mine.forward()
        end
        nav.turnRight()
      else
        nav.turnLeft()
        tool.swingUp()
        nav.up()
        for y = 1, length - 1 do
          mine.forward()
        end
        nav.turnLeft()
        for x = 1, width do
          mine.forward()
        end
        nav.turnAround()
      end
    else
      tool.swingUp()
      nav.up()
      for y = 1, length do
        mine.forward()
      end
      nav.turnRight()
    end
    build_layer(z)
  end
end

log.info("BUILDER BY TUSK")
print("")
local bp = require("blueprints/"..fname)
log.info("Файл "..fname.." подключен")
log.info("Изучаю чертежи ...")
if analyze_size(bp) then
  log.info("Размеры строения:")
  log.info("  Длина: "..length)
  log.info("  Ширина: "..width)
  log.info("  Высота: "..height)
else
  log.error("Аварийный выход: разные размеры в чертеже")
  return false
end
log.info("Произвожу расчет материалов ...")
analyze_materials(bp)
log.info("Материалы:")
for name, amount in pairs(materials) do
  log.info(name.label.."    ... "..amount)
end
log.info("Проверяю всё ли на месте ...")
if check_materials() then
  log.info("Все материалы на месте.")
else
  log.error("Не хватает следующих материалов:")
  for name, amount in pairs(materials) do
    if amount > 0 then
      log.error(name.label.."    ... "..amount)
    end
  end
  log.error("Аварийный выход: нехватка метериалов")
end
log.info("Строю обьект ...")
build_structure()

log.info("Дело сделано.")
