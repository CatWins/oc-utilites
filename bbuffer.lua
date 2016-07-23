local com = require('component')
local buffer = com.gt_batterybuffer
local gpu = com.gpu
local event = require('event')

local w,h = gpu.getResolution()

local max = buffer.getEUMaxStored()

gpu.setForeground(0x469649)
gpu.setBackground(0xCC8400)

function update()
  local current = buffer.getStoredEU()
  local progress = current / max * 100
  gpu.fill(1,1,w,h,' ')
  gpu.fill(1,1,progress * w / 100,h,'▇')
end

event.timer(1,update,math.huge)
