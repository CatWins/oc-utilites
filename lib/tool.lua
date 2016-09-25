local robot = require("robot")
local side = require('sides')
local cfg = require('config')
local util = require("lib/utility")

local ic = util.tryToLoad("inventory_controller")

if ic == nil then
  error("Отсутствует необходимый компонент inventory_controller!")
end

local tool = {}

-- READS TOOL LABEL (FOR GREGTECH METATOOLS)
function tool.init()
  if ic == nil then
    return
  end
  for i=cfg.empty_slot, cfg.INV_SIZE do
    if robot.count(i) == 0 then
      robot.select()
      ic.equip()
      local item = ic.getStackInInternalSlot()
      tool.current = item.label
      ic.equip()
      return true
    end
  end
  return false
end

-- SWAP TOOLS FOR EFFICIENCY
function tool.swap()
  local next
  if tool.current == cfg.pickaxe then
    next = cfg.shovel
  else
    next = cfg.pickaxe
  end
  return tool.equipByName(next)
end

-- REPLACE BROKEN TOOL
function tool.replace()
  if robot.durability() ~= nil then
    return
  end
  return tool.equipByName(tool)
end

-- EQUIP TOOL BY LABEL
function tool.equipByLabel(label)
  for i=cfg.empty_slot, cfg.INV_SIZE do
    local item = ic.getStackInInternalSlot(i)
    if item ~= nil then
      if label == item.label then
        robot.select(i)
        ic.equip()
        tool.current = label
        return true
      end
    end
  end
  return false
end

function tool.equipByName(name)
  for i=cfg.empty_slot, cfg.INV_SIZE do
    local item = ic.getStackInInternalSlot(i)
    if item ~= nil then
      if name == item.name then
        robot.select(i)
        ic.equip()
        tool.current = name
        return true
      end
    end
  end
  return false
end

function tool.swing()
  tool.replace()
  if robot.swing() then
    return true
  else
    tool.swap()
    if robot.swing() then return true end
  end
  return false
end

function tool.swingUp()
  tool.replace()
  if robot.swingUp() then
    return true
  else
    tool.swap()
    if robot.swingUp() then return true end
  end
  return false
end

function tool.swingDown()
  tool.replace()
  if robot.swingDown() then
    return true
  else
    tool.swap()
    if robot.swingDown() then return true end
  end
  return false
end

function tool.use()
  tool.replace()
  return robot.use()
end

function tool.useUp()
  tool.replace()
  return robot.useUp()
end

function tool.useDown()
  tool.replace()
  return robot.useDown()
end

function tool.isTool()
  local item = ic.getStackInInternalSlot()
  if item ~= nil then
    if item.name == cfg.pickaxe or item.name == cfg.shovel or item.name == cfg.shears then
      return true
    end
  end
  return false
end

tool.init()

return tool
