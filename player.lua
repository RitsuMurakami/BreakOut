player = {}

player.new = function (_x, _y, _width, _height)
    obj = {}

    -- position and size
    obj.x = _x
    obj.y = _y
    obj.width = _width
    obj.height = _height

    -- update
    obj.update = function()

    end

    -- draw
    obj.draw = function()
        -- draw ber
        love.graphics.rectangle("fill", obj.x, obj.y, obj.width, obj.height)
    end

end