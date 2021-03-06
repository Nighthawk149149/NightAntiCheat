local EventManager = {}
local event_functions = { _functions={} }
event_functions.__index = event_functions

function EventManager:Connect(event, func)
    table.insert(event_functions._functions, { event, func })
end

-- for i, event in event_functions._functions
function EventManager:Fire(event, ...)
    for i=1,#event_functions._functions,1 do
        if event_functions._functions[i][1] == event then
            -- event_functions._functions[i][2](...)
            task.spawn(event_functions._functions[i][2], ...)
        end
    end
end

EventManager.Events = {
    PlayerList = 1,
    Collect = 2,
    Check = 3,
}

return EventManager