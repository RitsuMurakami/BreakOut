Block = {}

Block.new = function(_x, _y)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- size
    obj.width = 15
    obj.height = 15

    -- functions
    obj.update = function()
        -- 当たり判定

    end

    obj.draw = function()-- 描画用
        -- draw rectangle
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

    return obj
end
    