local model_db = require "model/model_db"
local model_board = { }

-- Constructs a new board
function model_board.construct(src)
    local self = { }

    self.dots = model_db.load(src)
    self.current = 1

    return self
end

-- Creates a new board
function model_board.new(src)
    local self = model_board.construct(src)

    -- Reacts to a mouse press
    self.clickOn = function(x, y)
        local target = self.dots[self.current+1]

        if target ~= nil then
            local miss = util.distance(target.x, target.y, x, y)

            if miss <= util.radius then
                self.current = self.current + 1
            end
        end

        return self
    end

    return self
end

return model_board
