game_start = require "controller/menu_controller"
util = require "util"

function love.load()
    -- TODO Set new font
    current_controller = game_start.new()
end

function love.mousepressed(x, y, button, istouch)
    current_controller.press(x, y)
end

function love.update(dt)
    current_controller = current_controller.update(dt)
end

function love.draw()
    current_controller.draw()
end
