local menu_view = { }

function menu_view.construct()
    local self = { }
    return self
end

function menu_view.new()
    local self = menu_view.construct()

    self.draw = function()
        love.graphics.setBackgroundColor(255, 255, 255)
    end

    return self
end

return menu_view
