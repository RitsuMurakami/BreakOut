Ball = {}

Ball.new = function(_x, _y, _r, _deg, _radius)
    local obj = {}

    -- position, size, angle
    obj.x = _x
    obj.y = _y
    obj.r = _r
    obj.radius = _radius
    obj.deg = _deg
    obj.rad = math.rad(_deg)
    obj.speed = 5

    -- vector
    obj.cosx = function() 
        return obj.speed * math.cos(math.rad(obj.deg))
    end

    obj.siny = function()
        return obj.speed * math.sin(math.rad(obj.deg))
    end

    -- vec variable
    obj.vx = obj.cosx()
    obj.vy = obj.sinx()

    local window_width = love.graphics.getWidth()
    local window_height = love.graphics.getHeight()


    -- update
    obj.update = function()
        -- オブジェクトを移動させる
        obj.x = obj.x + obj.vx
        obj.y = obj.y + obj.vy

        -- 壁判定
        if obj.x > window_width + obj.radius then
            
        elseif obj.x < 0 then
            
        end

        -- あたり判定
    end

    -- draw
    obj.draw = function()
        -- draw a circle
        love.graphics.circle("line", obj.x, obj.y, obj.radius)
    end
end