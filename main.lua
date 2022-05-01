function love.load()
    require "Stage"
    require "block"
    require "ball"
    require "player"

    love.window.setMode(640, 480)

    -- objects
    player = Player.new(300, 400, 64, 10)
    ball = Ball.new(300, 300, math.rad(-45), 5)
end

function love.update()
    player.update()
    ball.update()

    -- 当たり判定
    
end

function love.draw()
    player.draw()
    ball.draw()

    ball.touch_player(player.x, player.y, player.width)
end
