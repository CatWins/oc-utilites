local blueprint = {}

local x = {}
x.label = "Stone Bricks"
x.name = "minecraft:stonebrick"
x.damage = 0

local y = {}
y.label = "Mossy Stone Bricks"
y.name = "minecraft:stonebrick"
y.damage = 1

local o = "air"

blueprint.blocks = {{
{y,o,o,x},
{y,o,o,x},
{y,o,o,x},
{y,o,o,x}},
{
{y,o,o,x},
{y,o,o,x},
{y,o,o,x},
{y,o,o,x}},
{
{y,y,x,x},
{y,y,x,x},
{y,y,x,x},
{y,y,x,x}}}

return blueprint.blocks
