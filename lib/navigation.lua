local robot = require('robot')

local navigation = {}
  navigation.loc = {x=0,y=0,z=0,d=0}
  navigation.moves = 0


function navigation.forward()
  if robot.forward() then
    if navigation.loc.d == 0 then navigation.loc.y = navigation.loc.y+1
    elseif navigation.loc.d == 1 then navigation.loc.x = navigation.loc.x+1
    elseif navigation.loc.d == 2 then navigation.loc.y = navigation.loc.y-1
    else navigation.loc.x = navigation.loc.x-1 end
    navigation.moves = navigation.moves + 1
    return true
  else
    return false
  end
end
function navigation.back()
  if robot.back() then
    if navigation.loc.d == 0 then navigation.loc.y = navigation.loc.y-1
    elseif navigation.loc.d == 1 then navigation.loc.x = navigation.loc.x-1
    elseif navigation.loc.d == 2 then navigation.loc.y = navigation.loc.y+1
    else navigation.loc.x = navigation.loc.x+1 end
    navigation.moves = navigation.moves + 1
    return true
  else
    return false
  end
end
function navigation.up()
  if robot.up() then
    navigation.loc.z = navigation.loc.z+1
    navigation.moves = navigation.moves + 1
    return true
  else
    return false
  end
end
function navigation.down()
  if robot.down() then
    navigation.loc.z = navigation.loc.z-1
    navigation.moves = navigation.moves + 1
    return true
  else
    return false
  end
end
function navigation.turnRight()
  navigation.loc.d = (navigation.loc.d+1)%4
  robot.turnRight()
end
function navigation.turnAround()
  navigation.loc.d = (navigation.loc.d+2)%4
  robot.turnAround()
end
function navigation.turnLeft()
  navigation.loc.d = (navigation.loc.d+3)%4
  robot.turnLeft()
end

return navigation
