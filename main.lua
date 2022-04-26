

function love.load()
    require "Stage"
    require "block"
    require "ball"
    require "player"

    love.window.setMode(640, 480)

    -- objects
    --Player = player.new(230, 300, 32, 10)
    ablock = Block.new(300, 300)
    player = Player.new(300, 300, 32, 10)
end

function love.update()
    
end

function love.draw()
    --Player.draw()
    ablock.draw()
    player.draw()
end

function love.keypressed(_Key) 
    --Player.Keypressed(_Key)
end