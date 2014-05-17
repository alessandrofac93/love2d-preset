require("libs.globals")

require("intro")
require("game")

function love.load()
    math.randomseed(os.time())

    Assets.setBaseImageDir('data/images')
    Assets.setBaseAudioDir('data/audio')
    Assets.setBaseFontDir('data/fonts')
    Assets.init() -- initialize the assets loader

    local intro = Intro()

    Gamestate.registerEvents()
    Gamestate.push(intro)
end

function love.quit()
end
