Ball = {}

Ball.new = function(_x, _y, _rad, _radius)
    local obj = {}

    -- position, size, angle
    obj.x = _x
    obj.y = _y
    obj.radius = _radius
    obj.rad = _rad
    obj.speed = 6

    -- vector
    obj.cosx = function() 
        return obj.speed * math.cos(obj.rad)
    end

    obj.siny = function()
        return obj.speed * math.sin(obj.rad)
    end

    -- vec variable
    obj.vx = obj.cosx()
    obj.vy = obj.siny()

    -- windowの大きさを取得
    local window_width = love.graphics.getWidth()
    local window_height = love.graphics.getHeight()

    -- update
    obj.update = function()
        -- オブジェクトを移動させる
        obj.x = obj.x + obj.vx
        obj.y = obj.y + obj.vy

        -- 壁で反射
        if obj.x > window_width + obj.radius or obj.x < 0 then
            obj.vx = -obj.vx
        end

        if obj.y > window_height + obj.radius or obj.y < 0 then
            obj.vy = -obj.vy
        end
    end

    -- playerとの当たり判定
    obj.touch_player = function(_px, _py, _pwidth)
        -- player position and size
        local p = {}
        p.x = _px
        p.y = _py
        p.width = _pwidth
        p.distanceFromBarCenter = 0
        
        -- ballがplayerに触れたら任意の方向に反射
        if obj.x > p.x and obj.x < p.x + p.width then
            if obj.y > p.y + obj.radius then
                -- playerにあたったら
                p.distanceFromBarCenter = (p.x + p.width / 2) - (obj.x + obj.radius / 2)

                obj.rad = 180 * (p.x + p.width - obj.x) / p.width
                if obj.rad < 10 then
                    obj.rad = 10
                elseif obj.rad > 170 then
                    obj.rad = 170
                end

                obj.rad = -math.rad(obj.rad)

                -- 当たり判定を反映
                obj.vx = obj.cosx()
                obj.vy = obj.siny()
            end
        end
    end

    -- blockとの当たり判定
    obj.touch_block = function(_bx, _by, _width, _height)
        local b = {}
        -- block
        b.x = _bx
        b.y = _by
        b.width = _width
        b.height = _height
        b.touch = false

        -- ball が　block と触れたら
        if obj.x + obj.radius > b.x and obj.x + obj.radius < b.x + b.width then
            if b.y < obj.y + obj.radius and obj.y + obj.radius < b.y + b.height then
                -- ball と　blockの座標の傾きを取得
                --local a = (obj.y - b.y) / (b.x + b.width - obj.x)
                --[[
                if obj.y < b.y + (b.height / 5) or obj.y > b.y + (b.height * 4 / 5) then
                    obj.vy = -obj.vy
                elseif obj.x < b.x + (b.width / 5) or obj.x > b.x + (b.width * 4 / 5) then
                    obj.vx = -obj.vx
                end]]
                --[[
                if obj.x < b.x + (b.width / 5) or obj.x > b.x + (b.width * 4 / 5) then
                    obj.vx = -obj.vx
                elseif obj.y < b.y + (b.height / 5) or obj.y > b.y + (b.height * 4 / 5) then
                    obj.vy = -obj.vy
                end]]
                obj.vx = -obj.vx
                obj.vy = -obj.vy
                b.touch = true
            end
        end

        -- ブロックにあたったかどうかを返す
        return b.touch
    end

    -- draw
    obj.draw = function()
        -- draw a circle
        love.graphics.circle("line", obj.x, obj.y, obj.radius)
        love.graphics.print(-math.deg(obj.rad))
    end

    return obj
end