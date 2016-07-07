--     Room digger by Tusk      --

local a = {...}
local cfg = require('config')(a[1],a[2],a[3])
local nav = require('lib/navigation')
local tool = require('lib/tool')
local mine = require('lib/mine')
local color = require('lib/color')
local fuel = require('lib/fuel')
local util = require('lib/utility')

if a[1] == nil  or a[2] == nil or a[3] == nil then
  print("Синтаксис: digger <length> <width> <depth>")
  return
end

print("[INFO] ROOM DIGGER BY TUSK")
print("")
print("[INFO] Копаю комнату с параметрами:")
print("[INFO]   Длина: "..cfg.l)
print("[INFO]   Ширина: "..cfg.w)
print("[INFO]   Глубина: "..cfg.h)

for z = 1, cfg.h do
  if z ~= 1 then
    if nav.d == 0 then
      nav.turnAround()
      for y = 1, cfg.l do
        mine.forward()
      end
    end
    nav.turnAround()
    tool.swingDown()
    nav.down()
  end
  for x = 1, cfg.w do
    if x ~= 1 then
      if x%2==1 then
        nav.turnRight()
        mine.forward()
        nav.turnRight()
      else
        nav.turnLeft()
        mine.forward()
        nav.turnLeft()
      end
    end
    for y = 1, cfg.l do
      mine.forward()
    end
  end
end

print("[INFO] Дело сделано.")
