local model_db = { }

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
