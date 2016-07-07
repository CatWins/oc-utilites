local com = require('component')

local utility = {}

function utility.tryToLoad(name)
  if com.isAvailable(name) then
    return com.getPrimary(name)
  else
    return nil
  end
end

return utility
