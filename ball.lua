Ball = {}

Ball.new = function(_x, _y, _r, _angle)
    local obj = {}

    -- position, size and angle
    obj.x = _x
    obj.y = _y
    obj.r = _r
    obj.angle = _angle
    obj.radius = 5

    -- update
    obj.update = function()

    end

    -- draw
    obj.draw = function()
        -- draw a circle
        love.graphics.circle("line", obj.x, obj.y, obj.radius)
    end
end