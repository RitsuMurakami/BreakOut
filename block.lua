Block = {}

Block.new = function(_x, _y)
    local obj = {}

    -- position
    obj.x = _x
    obj.y = _y

    -- size
    obj.width = 10
    obj.height = 10

    -- functions
    obj.update = function()

    end

    obj.draw = function()
        -- draw rectangle
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

    return obj
end
    