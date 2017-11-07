local game_view = require "view/game_view"
local game_controller = { }

function game_controller.construct()
    local self = { }

    self.view = game_view.new()
    self.board =

    return self
end

function game_controller.new()
    local self = game_controller.construct()

    self.press = function(x, y)

    end

    self.update = function(dt)
    end

    self.draw = function()
        self.view.draw(self)
    end

    return self
end

return game_controller
