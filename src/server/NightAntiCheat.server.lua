--[[
    The data will be sent to the AntiCheatData module.
    The module will hold all of the data that can be used for the checks.
]]--
print("Starting NAC...")
local EventManager = require(script.Parent.EventManager)

local function runAC()
    local start = tick()
    EventManager:Fire(EventManager.Events.PlayerList)
    EventManager:Fire(EventManager.Events.Collect)
    EventManager:Fire(EventManager.Events.Check)
    print(tick() - start)
end

local tickrate = 1/1 -- seconds/ticks
local running = true
while running do
    runAC()
    task.wait(tickrate)
end
