Stage = {}

Stage.new = function(_x, _y, _width, _height)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- size
    obj.width = _width
    obj.height = _height

    -- functions
    obj.touch = function() 
        -- 当たり判定

    end

    obj.draw = function() -- 描画用
        love.draw.graphics(obj.x, obj.y, obj.width, obj.height)
    end
end

