local sides = require('sides')
local robot = require("robot")

local cfg = require("config")
local nav = require("lib/navigation")
local tool = require("lib/tool")



local mine = {}

local lode = {}

function mine.forward()
  while not nav.forward() do tool.swing() end
end

function mine.isTrash(side)
  for i=1, cfg.trash_slots do
    robot.select(i)
    if side == sides.up then
      a,t = robot.detectUp()
      if t ~= 'solid' or robot.compareUp() then return true end
    elseif side == sides.front then
      a,t = robot.detect()
      if t ~= 'solid' or robot.compare() then return true end
    else
      a,t = robot.detectDown()
      if t ~= 'solid' or robot.compareDown() then return true end
    end
  end
  return false
end

function mine.side(side)
  local direct = nav.loc.d
  local backdir = (direct+2)%4

  if side == sides.up then
    c = 0
    while not nav.up() do
      tool.swingUp()
      c = c + 1
      if c>cfg.DEAD_END then return end
    end
  elseif side == sides.front then
    c = 0
    while not nav.forward() do
      tool.swing()
      c = c + 1
      if c>cfg.DEAD_END then return end
    end
  elseif side == sides.down then
    c = 0
    while not nav.down() do
      tool.swingDown()
      c = c + 1
      if c>cfg.DEAD_END then return end
    end
  end

  lode[nav.loc.x*cfg.MAX*cfg.MAX + nav.loc.y*cfg.MAX + nav.loc.z] = true

  -- check further direction
  if lode[nav.loc.x*cfg.MAX*cfg.MAX + nav.loc.y*cfg.MAX + (nav.loc.z+1)] == nil then
    if not mine.isTrash(sides.up) then mine.side(sides.up)
    else lode[nav.loc.x*cfg.MAX*cfg.MAX + nav.loc.y*cfg.MAX + (nav.loc.z+1)] = false end
  end
  if lode[nav.loc.x*cfg.MAX*cfg.MAX + nav.loc.y*cfg.MAX + (nav.loc.z-1)] == nil then
    if not mine.isTrash(sides.down) then mine.side(sides.down)
    else lode[nav.loc.x*cfg.MAX*cfg.MAX + nav.loc.y*cfg.MAX + (nav.loc.z-1)] = false end
  end

  for i=nav.loc.d, nav.loc.d+3 do
    local a = i%4
    local x = nav.loc.x
    local y = nav.loc.y
    if a == 0 then y = y + 1
    elseif a == 1 then x = x + 1
    elseif a == 2 then y = y - 1
    else x = x - 1 end
    if lode[x*cfg.MAX*cfg.MAX + y*cfg.MAX + nav.loc.z] == nil then
      while nav.loc.d < a do nav.turnRight() end
      while nav.loc.d > a do nav.turnLeft() end
      if not mine.isTrash(sides.front) then mine.side(sides.front)
      else lode[x*cfg.MAX*cfg.MAX + y*cfg.MAX + nav.loc.z] = false end
    end
  end

  -- come back
  if side == sides.up then
    nav.down()
  elseif side == sides.front then
    if nav.loc.d == direct and nav.back() then
      -- yet ready =)
    else
      while nav.loc.d < backdir do nav.turnRight() end
      while nav.loc.d > backdir do nav.turnLeft() end
      mine.forward()
    end
  elseif side == sides.down then
    nav.up()
  end
end

function mine.go(side)
  direct = nav.loc.d
  lode = {}
  mine.side(side)
  while nav.loc.d < direct do nav.turnRight() end
  while nav.loc.d > direct do nav.turnLeft() end
end

return mine
