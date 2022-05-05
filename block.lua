Block = {}

Block.new = function(_x, _y, _width, _height)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- size
    obj.width = _width
    obj.height = _height

    -- functions


    obj.draw = function()-- 描画用
        -- draw rectangle
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

    return obj
end
    