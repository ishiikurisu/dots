local util = { }

function util.distance(x1, y1, x2, y2)
    return math.sqrt((x1-x2)^2 + (y1-y2)^2)
end

util.radius = 5

-- see if the file exists
function util.fileExists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

-- get all lines from a file, returns an empty
-- list/table if the file does not exist
function util.linesFrom(file)
    if not util.fileExists(file) then return { } end
    lines = { }
    for line in io.lines(file) do
        lines[#lines + 1] = line
    end
    return lines
end

-- Splits a string in a separator
function util.split(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

return util
