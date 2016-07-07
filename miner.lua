-- Totoro Recursive Miner  --
--     Hacked by Tusk      --
local robot = require('robot')
local event = require('event')
local sides = require('sides')
local computer = require('computer')
local com = require('component')
local a = {...}
local cfg = require('config')(a[1],a[2],a[3],a[4])
local nav = require('lib/navigation')
local loot = require('lib/loot')
local tool = require('lib/tool')
local mine = require('lib/mine')
local color = require('lib/color')
local fuel = require('lib/fuel')
local util = require('lib/utility')

local step = require('step')

local cloader = util.tryToLoad("chunkloader")
local ic = util.tryToLoad("inventory_controller")

local light_allowed = (robot.setLightColor ~= nil)

if type(a[1]) == nil  or type(a[2]) == nil or type(a[3]) then
  print("Синтаксис: miner <length> <width> <depth> [comeback]")
  return
end

if ic ~= nil then
  print("[INFO] Обнаружен Inventory Controller. Инструмент будет менятся в соответсвии с файлом конфигурации")
end

if cloader ~= nil then
  print([[[WARNING] Обнаружен чанклодер!\n
    Его код, а также расход энергии не проверен. Он работает на остатках копипасты.]])
end

function goBack()
  while nav.loc.y > 0 do
    mine.forward()
  end
  if nav.loc.d == 0 then nav.turnLeft()
  elseif nav.loc.d == 2 then nav.turnRight() end
  while nav.loc.x > 0 do
    mine.forward()
  end
  nav.turnRight()
end

-- =================================== M A I N =================================== --
print("Totoro Recursive Miner 1.5H")
print("Hacked by Tusk")
print("[INFO] Запуск. Длина: "..cfg.l..". Ширина: "..cfg.w..'. \n       Возврат: '..cfg.comeback)
if cloader ~= nil and cfg.USE_CLOADER then
  cloader.setActive(true)
  print("[INFO] Чанклодер активирован.")
end
print("[INFO] Выключите робота, чтобы прервать работу.")

-- main cycle
robot.turnLeft()
if light_allowed then robot.setLightColor(color.working) end
for z=1, cfg.z do
  if z ~= 1 then
    local p = (nav.loc.d + z % 2 * 2) % 4
    if p == 2 then
      nav.turnRight()
      mine.forward()
      nav.turnLeft()
    else
      nav.turnLeft()
      mine.forward()
      nav.turnRight()
      for i = 1, cfg.w do
        mine.forward()
      end
      nav.turnAround()
    end
    tool.swingDown()
    nav.down()
    tool.swingDown()
    nav.down()
  end
  for i=1, cfg.l do
    step(i)
  end
end

-- ==================================== E N D ==================================== --
-- move to start position
if cfg.comeback == 'true' then goBack() end
if light_allowed then robot.setLightColor(color.idle) end
robot.turnRight()

if cloader ~= nil and cfg.USE_CLOADER then
  cloader.setActive(false)
  print("[INFO] Чанклодер деактивирован.")
end
print("[INFO] Подрочено")
print("[STATISTIC] Движений: "..nav.moves)
