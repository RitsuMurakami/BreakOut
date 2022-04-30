Player = {}

Player.new = function(_x, _y, _width, _height)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- sprite size
    obj.width = _width
    obj.height = _height

    local window_width = love.graphics.getWidth()

    -- functions
    obj.update = function()
        -- keypressed
        if love.keyboard.isDown("right") then
            obj.x = obj.x + 6

        elseif love.keyboard.isDown("left") then
            obj.x = obj.x - 6
        
        end

        -- 壁判定
        if obj.x > window_width - obj.width then
            obj.x = obj.x - 6
        elseif obj.x < 0 then
            obj.x = obj.x + 6
        end

    end

    obj.draw = function()-- 描画用
        -- draw rectangle
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

    return obj
end