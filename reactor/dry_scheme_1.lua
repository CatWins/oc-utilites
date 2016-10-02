local blueprint = {}

local s = {}
s.name = "IC2:reactorVentSpread"

local g = {}
g.name = "IC2:reactorVentGold"

local d = {}
d.name = "IC2:reactorVentDiamond"

local u = {}
u.name = "gregtech:gt.reactorUraniumQuad"

blueprint.components = {
  s,g,s,g,s,g,s,g,s,
  g,s,g,s,g,s,g,s,g,
  s,g,s,g,s,g,s,g,s,
  g,s,g,s,g,s,g,s,g,
  s,g,s,g,s,g,s,u,s,
  d,s,g,s,g,s,u,u,u
}

return blueprint.components
