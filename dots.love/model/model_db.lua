local model_db = { }

-- Lists all available options of boards, as described in the
-- `data/master.txt` file.
function model_db.list()
    local options = { }
    local cwd = love.filesystem.getWorkingDirectory()
    local target = string.gsub(cwd .. '/data/master.txt', '/', '\\')
    local lines = love.filesystem.lines(target)

    for line in lines do
        table.insert(options, line)
    end

    return options
end

-- TODO Actually implement this function
function model_db.load(src)
    local outlet = { }
    local ndots = 10

    math.randomseed(os.time())
    for i = 1, ndots do
        local x = (math.random() * 1000) % 800
        local y = (math.random() * 1000) % 600
        table.insert(outlet, { x = x, y = y })
    end

    return outlet
end

return model_db
