local model_db = require "model/model_db"
local menu_view = require "view/menu_view"
local game_controller = require "controller/game_controller"
local menu_controller = { }

function menu_controller.construct()
    local self = { }

    self.view = menu_view.new()
    self.options = model_db.list()
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
            for i, option in pairs(self.options) do
                if self.view.clickedSomething(i, action) then
                    return game_controller.new(option)
                end
            end
        end
        self.actions = { }
        return self
    end

    self.draw = function()
        self.view.drawOptions(self.options)
    end

    return self
end

return menu_controller
