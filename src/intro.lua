-- intro

Intro = Class.class()

function Intro:draw()
    love.graphics.setBackgroundColor(17, 17, 17)
    love.graphics.setColor(255, 255, 255)

    love.graphics.clear()
    love.graphics.setFont(Assets.extFont.DejaVuSans())
    love.graphics.print("Press Escape to skip intro", 10, 10)
end

function Intro:keypressed(k, u)
    game = Game()
    Gamestate:switch(game)
end
