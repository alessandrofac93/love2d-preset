Logger = Class.class()

function Logger:init(defaultColor)
  self.texts = { }

  self.colors = {
    black = { 0, 0, 0 },
    white = { 255, 255, 255 },
    red = { 255, 127, 127 },
    green = { 191, 255, 127 },
    blue = { 127, 159, 255 }
  }

  self.count = 0
  self.limit = 32

  if defaultColor then
    self:setDefaultColor(defaultColor)
  else
    self.defaultColor = self.colors.black
  end

  self.font = love.graphics.newFont(15)

  self.active = false
end

function Logger:setDefaultColor(defaultColor)
  if type(defaultColor) == "table" then
    self.defaultColor = defaultColor
  elseif type(defaultColor) == "string" then
    self.defaultColor = self.colors[defaultColor]
  end
end

function Logger:getActive()
  return self.active
end

function Logger:setActive(active)
  self.active = active
end

function Logger:log(context, color, ...)
  local arg = {...}
  local text = ""

  if (self.count > self.limit) then -- scroll elements
    table.remove(self.texts, 1)
  else -- add element
    self.count = self.count + 1
  end -- write data:
  
  if context then
    text = text .. "[" .. context .. "] "
  end

  for i, v in pairs(arg) do
    text = text .. tostring(v) .. "\t"
  end

  if color ~= nil then
    if type(color) == "string" then
      color = self.colors[color]
    end
  else
    color = self.defaultColor
  end
  
  if self.active then
    print(text)
  end
  
  self.texts[self.count] = {text = text, color = color}
end

function Logger:draw(x, y)
  if self.active then
    love.graphics.setFont(self.font)

    -- default position parameters:
    if (x == nil) then x = 16 end
    if (y == nil) then y = 16 end
    -- draw lines:
    for i = 1, self.count do
      local v = self.texts[i]

      -- draw color:
      love.graphics.setColor(v.color)
      love.graphics.print(v.text, x, y + (self.font:getHeight() * (i-1)))
    end
  end
end