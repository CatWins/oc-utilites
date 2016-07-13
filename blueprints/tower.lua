local blueprint = {}

local x = {}
x.label = "Mossy Stone Bricks"
x.name = "minecraft:stonebrick"
x.damage = 1

local y = {}
y.label = "Stone Bricks"
y.name = "chisel:stonebricksmooth"
y.damage = 0


local o = "air"

blueprint.blocks = {{

-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 6
{o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o}, -- 7
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 8
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 9
{o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 10
{o,x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 11
{x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x}, -- 12
{x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x}, -- 13
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 14
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 15
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 16
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 17
{x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x}, -- 18
{x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x}, -- 19
{o,x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 20
{o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 21
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 22
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 23
{o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o}, -- 24
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}}, -- 30
{
-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 6
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 7
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 8
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 9
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 10
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 11
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 12
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 13
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 14
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 15
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 16
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 17
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 18
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 19
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 20
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 21
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 22
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 23
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 24
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}}, -- 30
{
-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 6
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 7
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 8
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 9
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 10
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 11
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 12
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 13
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 14
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 15
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 16
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 17
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 18
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 19
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 20
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 21
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 22
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 23
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 24
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}}, -- 30
{
-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 6
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 7
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 8
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 9
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 10
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 11
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 12
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 13
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 14
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 15
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 16
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 17
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 18
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 19
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 20
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 21
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 22
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 23
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 24
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}}, -- 30
{
-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 6
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 7
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 8
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 9
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 10
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 11
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 12
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 13
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 14
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 15
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 16
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 17
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 18
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 19
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 20
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 21
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 22
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 23
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 24
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}}, -- 30
{
-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 6
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 7
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 8
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 9
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 10
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 11
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 12
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 13
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 14
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 15
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 16
{x,o,o,o,o,o,x,o,o,o,y,o,o,o,o,o,o,o,o,y,o,o,o,x,o,o,o,o,o,x}, -- 17
{x,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,x}, -- 18
{x,o,o,o,o,o,o,x,o,o,o,o,y,o,o,o,o,y,o,o,o,o,x,o,o,o,o,o,o,x}, -- 19
{o,x,o,o,o,o,o,x,o,o,o,o,o,y,y,y,y,o,o,o,o,o,x,o,o,o,o,o,x,o}, -- 20
{o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o}, -- 21
{o,o,x,o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o,x,o,o}, -- 22
{o,o,x,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,x,o,o}, -- 23
{o,o,o,x,o,o,o,o,o,o,o,o,x,x,x,x,x,x,o,o,o,o,o,o,o,o,x,o,o,o}, -- 24
{o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}}, -- 30
{
-- 2   4   6   8   10  12  14  16  18  20  22  24  26  28  30
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}, -- 1
{o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o}, -- 2
{o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o}, -- 3
{o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o}, -- 4
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 5
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 6
{o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o}, -- 7
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 8
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 9
{o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 10
{o,x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 11
{x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x}, -- 12
{x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x}, -- 13
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 14
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 15
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 16
{x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x}, -- 17
{x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x}, -- 18
{x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x}, -- 19
{o,x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 20
{o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o}, -- 21
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 22
{o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o}, -- 23
{o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o}, -- 24
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 25
{o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o}, -- 26
{o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o}, -- 27
{o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o}, -- 28
{o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o}, -- 29
{o,o,o,o,o,o,o,o,o,o,o,x,x,x,x,x,x,x,x,o,o,o,o,o,o,o,o,o,o,o}} -- 30

}

return blueprint.blocks
