local game_view = { }

-- Draws the board on screen
function game_view.drawBoard(board)
    local x = 0
    local y = 0

    love.graphics.setBackgroundColor(255, 255, 255)
    love.graphics.setColor(0, 0, 0)

    -- Drawing dots
    for i, dot in ipairs(board.dots) do
        x = dot.x
        y = dot.y
        if i == (board.current+1) then
            love.graphics.setColor(255, 0, 0)
        else
            love.graphics.setColor(0, 0, 0)
        end
        love.graphics.ellipse("fill", x, y, util.radius, util.radius)
    end

    -- Drawing lines
    love.graphics.setColor(0, 0, 0)
    if board.current > 1 then
        local limit = board.current

        if limit > #board.dots then
            limit = #board.dots
        end

        for i = 2, limit do
            local previous = board.dots[i-1]
            local current = board.dots[i]
            love.graphics.line(previous.x, previous.y, current.x, current.y)
        end
    end
    if (board.current > 0) and (board.current < #board.dots) then
        local current = board.dots[board.current]
        love.graphics.setColor(0, 0, 0)
        love.graphics.line(love.mouse.getX(), love.mouse.getY(), current.x, current.y)
    end
end

-- Constructs a new game view
function game_view.construct()
    local self = { }
    return self
end

-- Creates a new game view
function game_view.new()
    local self = game_view.construct()

    self.draw = function(controller)
        love.graphics.setBackgroundColor(255, 255, 255)
    end

    self.drawBoard = function(board)
        game_view.drawBoard(board)
    end

    return self
end

return game_view
