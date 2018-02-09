--  /\/ GUI LIBRARY BY TUSK /\/ --

local Button = {}
Button.__index = Button

function Button:new(func, x, y, width, height, text, palette)
  local self = setmetatable({}, Button)
  self.width = math.floor(width) - unicode.len(text)
  self.height = math.floor(height)
  self.func = func
  for i=1, math.floor(self.width/2) do
    self.text = self.text.. ' '
  end
  self.text = self.text..text
  for i=1, math.ceil(self.width/2) do
    self.text = self.text.. ' '
  end
  self.x = math.floor(x)
  self.y = math.floor(y)
  self.palette = palette
  self.visible = true
  return self
end

function Button:draw()
  if self.visible then
    gpu.setForeground(self.palette.fg)

    gpu.setBackground(self.palette.tint)
    gpu.fill(self.x, self.y, self.width, 1, ' ')
    gpu.setBackground(self.palette.bg)
    gpu.fill(self.x, self.y + 1, self.width, 1, ' ')
    gpu.set(self.x, self.y + 2, self.text)
    gpu.fill(self.x, self.y + 3, self.width, 1, ' ')
    gpu.setBackground(self.palette.shade)
    gpu.fill(self.x, self.y + 4, self.width, 1, ' ')

  end
end

function Button:click(x, y)
  if self.visible then
    if y == self.y then
      if x >= self.x and x < self.x + unicode.len(self.text) then
        local data = self.func()
        return true, data
      end
    end
  end
end

local i = Button.new(5)

print(i:get_value()) --> 5
i:set_value(6)
print(i:get_value()) --> 6
