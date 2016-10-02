local a = {...}
local com = require('component')
local side = require('sides')
local util = require('lib/utility')
local ic = util.tryToLoad("inventory_controller")
local red = util.tryToLoad('redstone')
local gpu = util.tryToLoad('gpu')
local reactor = com.reactor_chamber

local fname = a[1]
local layout = require("reactor/"..fname)


--  /\/ IC2 Reactor Chamber Driver funcs  /\/ --

--  int getHeat()
--  int getMaxHeat()
--  int getReactorEnergyOutput()
--  int getReactorEUOutput()
--  bool producesEnergy()


local t -- current temperature
local tMax  -- explosion temperature
local tTarget  --  temperature reactor will turn off and rest at
local tInner  --  max heated component durability (only for components that can heat)
local isCold  -- are reactor hull and inner components completly cooled down?
local isWorking --  is work func in progress?
local isLayoutOk  --  is all components in place?

local battery
local layoutSize

local screenWidth
local screenHeight

local fuelList = {}  --  table which contains non-tracked components as a keys
local fuelConfig = {'gregtech:gt.reactorUraniumQuad'}

local RED_OUTPUT_SIDE = sides.bottom
local RED_INPUT_SIDE = sides.left
local RED_ENERGY_SIDE = sides.right
local REACTOR_SIDE = 3

function init()
  t = reactor.getHeat()
  tMax = reactor.getMaxHeat()
  tTarget = tMax / 5
  isCold = false
  battery = red.getInput(RED_ENERGY_SIDE)

  layoutSize = 0
  for k,v in pairs(layout.components) do
    layoutSize = layoutSize + 1
  end

  for k,v in pairs(fuelConfig) do
    util.addToSet(fuelList, v)
  end

  tInner = innerTempreture()

  screenWidth, screenHeight = gpu.getResolution()
end

function innerTempreture()  --  returns temperature of max heated component
  local temp = 100
  for i = 1, ic.inventorySize(REACTOR_SIDE) do
    local stack = ic.getStackInSlot(REACTOR_SIDE, i)
    local d = stack.damage * 100 / stack.maxDamage
    if stack.maxDamage > 0 and d < temp and ~util.setContains(fuelList, stack.name) then
      temp = d
    end
  end
  return temp
end

function checkLayout()
  if ic.inventorySize(REACTOR_SIDE) ~= layoutSize then return false end
  for i = 1, ic.inventorySize(REACTOR_SIDE) do
    if ic.getStackInSlot(REACTOR_SIDE, i).name ~= layout.components[i].name then return false end
  end
  return true
end

function cycle()
  rest()
  if checkLayout() then isLayoutOk = true else isLayoutOk = false end
  work()
end

function update()
  t = reactor.getHeat()
  tInner = innerTempreture()
  battery = red.getInput(RED_ENERGY_SIDE)
  if t == 0 and tInner == 100 then
    isCold = true
  else
    isCold = false
  end
  render()
end

function render()
  gpu.setBackground(#071007)
  gpu.setForeground(#7cd043)

  gpu.fill(0, 0, screenWidth, screenHeight, ' ')

  gpu.set(1, 1, if red.getInput(RED_INPUT_SIDE) > 0 then 'Реактор включен' else 'Реактор выключен' end)
  gpu.set(1, 2, if isWorking then 'Идёт реакция' else 'Охлаждение' end)
  gpu.set(1, 3, 'Температура оболочки: ' .. t .. '/' .. tMax)
  gpu.set(1, 4, 'Температура компонентов: ' .. tInner .. '/100')

  gpu.setForeground(#d0437c)
  --  Ошибки
  if ~isLayoutOk then gpu.set(1, 5, '[ОШИБКА] Несоответствие шаблону') end

end

function work() --  добавить зависимость от батареек [DONE]
  isWorking = true
  while isLayoutOk and tInner >= 50 and t < tTarget and battery < 15 do
    red.setOutput(RED_OUTPUT_SIDE, 255)
    os.sleep(1)
    update()
  end
end

function rest()
  isWorking = false
  red.setOutput(RED_OUTPUT_SIDE,0)
  while isCold == false do
    os.sleep(1)
    update()
  end
end

-- /\/  Main Programm /\/ --

init()
while true do
  cycle()
end
