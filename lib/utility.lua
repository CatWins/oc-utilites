local com = require('component')

local utility = {}

function utility.tryToLoad(name)
  if com.isAvailable(name) then
    return com.getPrimary(name)
  else
    return nil
  end
end

function utility.addToSet(set, key)
  set[key] = true
end

function utility.removeFromSet(set, key)
  set[key] = nil
end

function utility.setContains(set, key)
  return set[key] ~= nil
end

return utility
