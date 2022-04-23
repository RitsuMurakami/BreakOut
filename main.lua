function love.load()
    require "Stage"
    require "block"
    require "ball"

    love.window.setMode(640, 480)
    blocka = Block.new(300, 300)
    
end

function love.update()
    
end

function love.draw()
    blocka.draw()
end

