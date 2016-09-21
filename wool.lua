local a = {...}
local robot = require("robot")
local side = require('sides')
local cfg = require('config')(a[1],a[2])
local nav = require('lib/navigation')
local tool = require('lib/tool')
--local mine = require('lib/mine')
local color = require('lib/color')
local fuel = require('lib/fuel')
local util = require('lib/utility')
local log = require('lib/log')
local ic = util.tryToLoad("inventory_controller")

local width = cfg.w
local length = cfg.l

function shear()
  tool.useDown()
end

function row(y)
  for x = 1, width do
    while nav.forward() == false do end
    if x%2 == 0 then shear() end
  end
end

function layer()
  for y = 1, length do
    if y ~= 1 then
      if y%2==0 then
        nav.turnRight()
        while not nav.forward() do end
        nav.turnRight()
      else
        nav.turnLeft()
        while not nav.forward() do end
        nav.turnLeft()
      end
    end
    row(y)
  end
end

function goHome()
  if length%2==0 then
    nav.turnRight()
    for y = 1, length - 1 do
      while not nav.forward() do end
    end
    nav.turnRight()
  else
    nav.turnLeft()
    for y = 1, length - 1 do
      while not nav.forward() do end
    end
    nav.turnLeft()
    for x = 1, width - 1 do
      while not nav.forward() do end
    end
    nav.turnAround()
  end
end

function unload()
  for i = 1, cfg.INV_SIZE do
    robot.select(i)
    if not tool.isTool() then robot.dropUp() end
  end
end

function prepare()
  unload()
  tool_stack = ic.getStackInInternalSlot(1)
  fuel_stack = ic.getStackInInternalSlot(2)
  hasSpareTool = false
  hasSpareFuel = false
  if tool_stack then
    if tool_stack.name == cfg.shears then
      hasSpareTool = true
    end
    if hasSpareTool == false then
      robot.select(1)
      robot.dropUp()
    end
  end

  if fuel_stack then
    if fuel_stack.name == cfg.fuel then
      hasSpareFuel = true
    end
    if hasSpareFuel == false then
      robot.select(2)
      robot.dropUp()
    end
  end

  if hasSpareTool == false than
    if ic.getStackInSlot(sides.top, 9).name == cfg.shears than
      ic.suckFromSlot(sides.top, 9)
    else
      log.error('Нет запасных ножниц в 9 слоте верхнего инвентаря')
      error("NO SPARE SHEARS")
    end
  end

  if hasSpareFuel == false than
    if ic.getStackInSlot(sides.top, 8).name == cfg.fuel than
      ic.suckFromSlot(sides.top, 8)
    else
      log.error('Нет угля в 8 слоте верхнего инвентаря')
      error("NO SPARE FUEL")
    end
  end

  fuel.check()

end
-- xxxxx
-- xoxox
-- xxxxx

while true do
  prepare()
  layer()
  goHome()
end
