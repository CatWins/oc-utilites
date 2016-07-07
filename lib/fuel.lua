local computer = require('computer')
local robot = require('robot')
local util = require('lib/utility')

local config = require('config')

local gen = util.tryToLoad("generator")

if gen == nil then
  print([[[WARNING] Генератор не обнаружен!\n
    Робот не проработает долго без подзарядки.]])
end

local fuel = {}

function fuel.check()
  if gen ~= nil then
    if (computer.maxEnergy() - computer.energy()) > 1000 then
      if gen.count() == 0 then
        for i=config.empty_slot, config.INV_SIZE do
          robot.select(i)
          if gen.insert() then break end
        end
      end
    end
  end
end

return fuel
