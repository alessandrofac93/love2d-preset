require("libs.globals")

require("intro")

function love.load()
    math.randomseed(os.time())

    Assets.setBaseImageDir('data/images')
    Assets.setBaseAudioDir('data/audio')
    Assets.setBaseFontDir('data/fonts')
    Assets.init() -- initialize the assets loader

    local intro = Intro()

    Gamestate.registerEvents()
    Gamestate.switch(intro)
end

function love.quit()
end
