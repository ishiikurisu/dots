local menu_view = { }

function menu_view.construct()
    local self = { }

    self.bigFont = love.graphics.newFont("marker.ttf ", 20)
    self.smallFont = love.graphics.newFont("marker.ttf   ", 14)

    return self
end

function menu_view.new()
    local self = menu_view.construct()

    self.clickedSomething = function(buttonNo, action)
        local result = false
        local i = 50
        local j = 50*buttonNo
        local x = action.x
        local y = action.y
        local xc = (x >= i) and (x <= i + 100)
        local yc = (y >= j) and (y <= j + 40)

        result = xc and yc

        return result
    end

    self.drawOptions = function(options)
        love.graphics.setBackgroundColor(253, 226, 255)

        love.graphics.setFont(self.bigFont)
        love.graphics.setColor(158, 14, 49)
        love.graphics.print('Follow the dots!', 300, 50)
        love.graphics.setFont(self.smallFont)
        love.graphics.print('@ishiikurisu', 300, 75)

        love.graphics.setColor(29, 30, 44)
        for i, option in pairs(options) do
            love.graphics.print(option, 50, 50*i)
        end
    end

    return self
end

return menu_view
