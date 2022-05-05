function love.load()
    require "Stage"
    require "block"
    require "ball"
    require "player"

    love.window.setMode(640, 480)

    -- objects
    -- blockは1次元配列で管理
    blocks = {}
    h = {}
    a = 0

    local b = 1
    for j = 0, 12 do
        for i = 0, 19 do
            blocks[b] = Block.new(i * 32, j * 16, 30, 14)
            b = b + 1
        end
    end
    

    player = Player.new(300, 400, 96, 10)
    ball = Ball.new(300, 300, math.rad(-45), 5)
end

function love.update()
    player.update()
    ball.update()

    -- 当たり判定
    --[[
    for i = 1, #blocks do
        local a = {}
        a.x = blocks[i].x
        a.y = blocks[i].y
        a.width = blocks[i].width
        a.height = blocks[i].height
        if ball.touch_block(a.x, a.y, a.width, a.height) then
            table.remove(blocks, i)
        end
    end
    ]]
    
    
end

function love.draw()
    player.draw()
    ball.draw()

    for i, v in ipairs(blocks) do
        v.draw()

        local a = {}
        a.x = blocks[i].x
        a.y = blocks[i].y
        a.width = blocks[i].width
        a.height = blocks[i].height

        if ball.touch_block(a.x, a.y, a.width, a.height) then
            table.remove(blocks, i)
        end
    end

    ball.touch_player(player.x, player.y, player.width)
end
