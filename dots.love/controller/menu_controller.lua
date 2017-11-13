local menu_view = require "view/menu_view"
local game_controller = require "controller/game_controller"
local menu_controller = { }

function menu_controller.construct()
    local self = { }

    self.view = menu_view.new()
    self.actions = { }

    return self
end

function menu_controller.new()
    local self = menu_controller.construct()

    self.press = function(x, y)
        local action = { x = x, y = y }
        table.insert(self.actions, action)
    end

    self.update = function(dt)
        for _, action in pairs(self.actions) do
            -- body...
            return game_controller.new()
        end
        self.actions = { }
        return self
    end

    self.draw = function()
        self.view.draw()
    end

    return self
end

return menu_controller
