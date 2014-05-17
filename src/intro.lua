-- intro

Intro = Class.class()

function Intro:draw()
    love.graphics.setBackgroundColor(17, 17, 17)
    love.graphics.setColor(255, 255, 255)

    love.graphics.clear()
    love.graphics.setFont(Assets.extFont.DejaVuSans())
    love.graphics.print("Intro.", 10, 10)
end
