local com = require('component')
local buffer = com.gt_batterybuffer

local bb = {}

local max = 400000  --single battery capacity

function bb.getChargePercent()
  local current = buffer.getBatteryCharge(1)
  local progress = current / max * 100
  return progress
end

return bb
