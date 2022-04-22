Block = {}

function Block:new(x, y)
    -- position
    self.x = x
    self.y = y

    -- size
    self.width = 10
    self.height = 10
    
    -- ブロックが存在するか否か
    self.existence = true
end

function Block:update()
    -- 当たり判定を作る
end

function Block:draw()
    -- draw rectangle
    love.graphics.rectangle(self.x, self.y, self.width, self.height)
end