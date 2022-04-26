Player = {}

Player.new = function(_x, _y, _width, _height)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- size
    obj.width = _width
    obj.height = _height

    -- functions
    obj.update = function()
        -- 当たり判定

    end

    obj.draw = function()-- 描画用
        -- draw rectangle
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

    -- keypressed
    obj.Keypressed = function(_Key)
        if _Key == "right" then
            obj.x = obj.x + 5

        elseif _Key == "left" then
            obj.x = obj.x - 5
        end
    end

    return obj
end

--[[
Player.new = function (_x, _y, _width, _height)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- size
    obj.width = _width
    obj.height = _height

    -- update
    obj.update = function()
        
    end

    -- draw
    obj.draw = function()-- 描画用
        -- draw rectangle
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

    -- keypressed
    obj.Keypressed = function(_Key)
        if _Key == "right" then
            obj.x = obj.x + 5

        elseif _Key == "left" then
            obj.x = obj.x - 5
        end
    end
end
]]