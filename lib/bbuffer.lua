local com = require('component')
local buffer = com.batterybuffer_09_tier_02
local ic = com.inventory_controller

local bb = {}

--local max = 400000  --single battery capacity

local battery = ic.getStackInSlot(0,1)

function bb.getChargePercent()
  --local current = buffer.getBatteryCharge(1)
  local max = battery.maxCharge
  local current = battery.charge
  local progress = current / max * 100
  return math.floor(progress)
end

return bb
