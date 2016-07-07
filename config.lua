local robot = require('robot')

local config = {}
  config.TECH_SLOTS = 6
  config.VANILLA_CHEST = true
  config.PATHWAYS = true
  config.DROP_TRASH = false
  config.DEAD_END = 16
  config.USE_CLOADER = false
  config.UNLOAD_AT = 4 -- if number of empty slots less then this than unload to chest

  config.INV_SIZE = robot.inventorySize()
  if config.VANILLA_CHEST then config.INV_SIZE = math.min(config.INV_SIZE, config.TECH_SLOTS + 27) end
  config.MAX = 1024

  config.trash_slots = config.TECH_SLOTS - 1
  config.chest_slot = config.TECH_SLOTS
  config.empty_slot = config.TECH_SLOTS + 1

  config.pickaxe = "gt.metatool.01.2.name" --label
  config.shovel = "gt.metatool.01.4.name"

local mt = {}
setmetatable(config, mt)
mt.__call = function(table,l,w,h,comeback)
  config.l = tonumber(l)
  config.w = tonumber(w)
  config.h = tonumber(h)
  config.z = math.ceil(config.h / 2)
  config.comeback = comeback or 'false'
  config.halfw = math.floor(config.w/2)
  return config
end

return config
