local model_db = require "model/model_db"
local model_board = { }

-- Constructs a new board
function model_board.construct(src)
    local self = { }

    self.dots = model_db.load(src)
    self.current = 13

    return self
end

-- Creates a new board
function model_board.new(src)
    local self = model_board.construct(src)

    self.clickOn = function(x, y)
        -- TODO Implement this function
    end

    return self
end

return model_board
