local util = { }

function util.distance(x1, y1, x2, y2)
    return math.sqrt((x1-x2)^2 + (y1-y2)^2)
end

util.radius = 5

return util
