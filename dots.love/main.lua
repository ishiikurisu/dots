game_start = require "controller/game_controller"

function love.load()
    current_controller = game_start.new()
end

function love.mousepressed(x, y, button, istouch)
    current_controller.press(x, y)
end

function update(dt)
    current_controller = current_controller.update(dt)
end

function love.draw()
    current_controller.draw()
end
