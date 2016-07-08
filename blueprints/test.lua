local blueprint = {}

local x = {}
x.label = "Stone Bricks"
x.name = "minecraft:stonebrick"
x.damage = 0

local y = {}
y.label = "Mossy Stone Bricks"
y.name = "minecraft:stonebrick"
y.damage = 1

local o = nil

blueprint.blocks = {{
{y,o,y},
{o,o,o},
{y,o,y}},
{
{x,o,x},
{o,o,o},
{x,o,x}},
{
{x,x,x},
{x,x,x},
{x,x,x}}}

return blueprint.blocks
