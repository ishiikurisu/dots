local game_view = { }

function game_view.construct()
    local self = { }
    return self
end

function game_view.new()
    local self = game_view.construct()

    self.draw = function(controller)
        love.graphics.setBackgroundColor(255, 255, 255)
    end

    return self
end

return game_view
