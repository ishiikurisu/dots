local model_db = { }

-- Lists all available options of boards, as described in the
-- `data/master.txt` file.
function model_db.list()
    local target = util.getDataFolder() .. '\\master.txt'
    return util.linesFrom(target)
end

-- Loads the given option from the data folder.
function model_db.load(option)
    local src = util.getDataFolder() .. '\\' .. option .. '.txt'
    local lines = util.linesFrom(src)
    local outlet = { }
    local ndots = 0

    for _, line in pairs(lines) do
        local fields = util.split(line)
        local x = tonumber(fields[1])
        local y = tonumber(fields[2])
        table.insert(outlet, { x = x, y = y })
        ndots = ndots + 1
    end

    return outlet
end

return model_db
