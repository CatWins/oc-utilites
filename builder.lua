--     Room digger by Tusk      --

local a = {...}
local cfg = require('config')
local nav = require('lib/navigation')
local tool = require('lib/tool')
local mine = require('lib/mine')
local color = require('lib/color')
local fuel = require('lib/fuel')
local util = require('lib/utility')
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
      print("[ERROR] В вашем чертеже ошибка: слои разных размеров. z = "..i)
      return false
    end
  end
  for i = 1, height do
    for j = 1, length do
      local t_width = tablelength(bp[i][j])
      if width ~= t_width then
        print("[ERROR] В вашем чертеже ошибка: ряды разных размеров. z = "..i.."   y = "..j)
        return false
      end
    end
  end
  return true
end

function analyze_materials(bp)
  for z = 1, height do
    for y = 1, length do
      for x = 1, width do
        if materials[bp[z][y][x]] == nil then
          materials[bp[z][y][x]] = 1
        else
          materials[bp[z][y][x]] = materials[bp[z][y][x]] + 1
        end
      end
    end
  end
end

function check_materials()
  for i = 1, cfg.INV_SIZE do
    local stack = ic.getStackInInternalSlot(i)
    for name, amount in pairs(materials) do
      if name == stack.name then  -- Вот тут я хз какой параметр чекать
        materials[name] = materials[name] - stack.amount -- Тож хз
      end
    end
  end
  for name, amount in pairs(materials) do
    if amount > 0 then return false end
  end
  return true
end

print("[INFO] BUILDER BY TUSK")
print("")
local bp = require(fname)
print("[INFO] Файл "..fname.." подключен")
print("[INFO] Изучаю чертежи ...")
if analyze_size(bp) then
  print("[INFO] Размеры строения:")
  print("[INFO]   Длина: "..length)
  print("[INFO]   Ширина: "..width)
  print("[INFO]   Высота: "..height)
else
  print("[ERROR] Аварийный выход: разные размеры в чертеже")
  return false
end
print("[INFO] Произвожу расчет материалов ...")
analyze_materials(bp)
print("[INFO] Материалы:")
for name, amount in pairs(materials) do
  print("[INFO] " ..name.."    ... "..amount)
end
print("[INFO] Проверяю всё ли на месте ...")
if check_materials() then
  print("[INFO] Все материалы на месте.")
else
  print("[ERROR] Не хватает следующих материалов:")
  for name, amount in pairs(materials) do
    if amount > 0 then
      print("[ERROR]  "..name.."    ... "..amount)
    end
  end
  print("[ERROR] Аварийный выход: нехватка метериалов")
end
print("[INFO] Строю обьект ...")

-- А кода то нету, этож остатки от диггера

for z = 1, cfg.z do
  if z ~= 1 then
    if nav.d == 2 then
      nav.turnAround()
      for y = 1, cfg.l
        mine.forward()
      end
    end
    nav.turnAround()
    tool.swingDown()
    nav.down()
  end
  for x = 1, cfg.w do
    if x ~= 1 then
      if x%2==1 then
        nav.turnRight()
        mine.forward()
        nav.turnRight()
      else
        nav.turnLeft()
        mine.forward()
        nav.turnLeft()
      end
    end
    for y = 1, cfg.l do
      mine.forward()
    end
  end
end

print("[INFO] Дело сделано.")
