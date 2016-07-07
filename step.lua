local sides = require('sides')
local robot = require("robot")

local cfg = require("config")
local nav = require("lib/navigation")
local loot = require("lib/loot")
local fuel = require("lib/fuel")
local tool = require("lib/tool")
local mine = require("lib/mine")

return function (progress)
  -- every tenth
  tenth = (nav.loc.x % 15 == 0)
  -- dig one row
  for x=1, cfg.w do
    -- check up/down
    if not mine.isTrash(sides.down) then mine.go(sides.down) end
    if not mine.isTrash(sides.up) then mine.go(sides.up) end
    -- tonnel for player
    if cfg.PATHWAYS then
      if nav.loc.y == cfg.halfw then
        tool.swingDown()
        while robot.detectUp() do tool.swingUp() end
      end
      if x == 1 or x == cfg.w then
        tool.swingDown()
      end
    else
      if nav.loc.y == cfg.halfw then
        tool.swingDown()
      end
    end
    -- move
    if x<cfg.w then
      mine.forward()
      if cfg.PATHWAYS and tenth then tool.swingDown() end
    end
  end

  -- check front
  if not mine.isTrash(sides.front) then mine.go(sides.front) end

  -- next one
  if progress%2==1 then
    nav.turnRight()
    mine.forward()
    nav.turnRight()
  else
    nav.turnLeft()
    mine.forward()
    nav.turnLeft()
  end

  -- fuel checking
  fuel.check()
  -- trash checking
  if cfg.DROP_TRASH then
    loot.check_trash()
  end
  -- loot checking
  if loot.check_loot() then
    nav.turnAround()
    loot.unload()
    nav.turnAround()
  end
end
