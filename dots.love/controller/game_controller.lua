local model_board = require "model/model_board"
local game_view = require "view/game_view"
local game_controller = { }

-- Constructs a new game controller
function game_controller.construct()
    local self = { }

    self.view = game_view.new()
    self.board = model_board.new('test.txt')
    self.actions = { }

    return self
end

-- Creates a new controller
function game_controller.new()
    local self = game_controller.construct()

    -- Queues mouse presses for updates
    self.press = function(x, y)
        table.insert(self.actions, { x = x, y = y })
    end

    -- Updates the game state based on the user's actions
    self.update = function(dt)
        for _, action in pairs(self.actions) do
            self.board = self.board.clickOn(action.x, action.y)
        end
        if self.board.finished then
            return game_start.new()
        end
        self.actions = { }
        return self
    end

    -- Draws relevant stuff to screen
    self.draw = function()
        self.view.drawBoard(self.board)
    end

    return self
end

return game_controller
