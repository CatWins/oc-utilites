local robot = require('robot')

local cfg = require('config')
local nav = require('lib/navigation')
local tool = require('lib/tool')

local item_control = {}

function item_control.check_loot()
  local n = 0
  for i=cfg.empty_slot, cfg.INV_SIZE do
    if robot.count(i) == 0 then n = n + 1 end
  end
  if n > cfg.UNLOAD_AT then return false end
  return true
end

function item_control.unload()
  -- place for chest
  while tool.swing() do end
  tool.swingUp()
  nav.up()
  while tool.swing() do end
  nav.down()
  robot.select(cfg.chest_slot)
  if robot.place() then
    -- put items
    for i=cfg.empty_slot, cfg.INV_SIZE do
      robot.select(i)
      while robot.drop() do end
    end

    -- grab ender chest
    if not cfg.VANILLA_CHEST then
      robot.select(cfg.chest_slot)
      tool.swing()
    end
  end
end

function item_control.check_trash()
  for i=1, cfg.trash_slots do
    -- if too many trash of this type
    if robot.space(i) == 0 then
      -- drop all but one in trash slot
      robot.select(i)
      robot.dropDown(robot.count(i)-1)
      -- and drop all others
      for j=cfg.empty_slot, cfg.INV_SIZE do
        if robot.compareTo(j) then
          robot.select(j)
          robot.dropDown()
          robot.select(i)
        end
      end
    end
  end
end

return item_control
