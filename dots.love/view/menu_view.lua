local menu_view = { }

function menu_view.construct()
    local self = { }
    return self
end

function menu_view.new()
    local self = menu_view.construct()

    self.drawOptions = function(options)
        love.graphics.setBackgroundColor(255, 255, 255)
        love.graphics.setColor(0, 0, 0)
        for i, option in pairs(options) do
            love.graphics.print(option, 50, 50*i)
        end
    end

    return self
end

return menu_view
