local com = require('component')
local glasses = com.glasses
local gpu = com.gpu
local event = require('event')

local bbuffer = require('lib/bbuffer')

local arEnabled = true

gpu.setResolution(10,1)

function arInit(s)
  chargeLabel = glasses.addTextLabel()
  chargeLabel.setPosition(2,2)
  chargeLabel.setText('Ожидание данных ...')
end

function update()
  charge = bbuffer.getChargePercent()
  gpu.set(1,1,'Заряд: ' .. charge .. '%')
  if arEnabled then
    chargeLabel.setText('Заряд: ' .. charge .. '%')
  end
end

if arEnabled then
  arInit()
end

event.timer(1,update,math.huge)
