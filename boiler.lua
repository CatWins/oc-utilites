local com = require('component')
local red = com.redstone

local tank = com.tank_controller

function sideDetect()
  for i = 0, 5 do
    if tank.getTankLevel(i) > 0 then
      return i
    end
    return nil
  end
end

local s = sideDetect()
local max = tank.getTankCapacity(s)

while(true) do
  local current = tank.getTankLevel(s)
  p = current / (max / 100)
  if (p <= 5) then
    red.setOutput(2,255)
  end
  if (p >= 95) then
    red.setOutput(2,0)
  end
  os.sleep(10)
end
