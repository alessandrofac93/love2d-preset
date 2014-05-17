Game = Class.class()

function Game:init()

end

function Game:draw()
  love.graphics.setFont(Assets.extFont.DejaVuSans())
  love.graphics.print("FPS: " .. love.timer.getFPS(), 5, 5)
end