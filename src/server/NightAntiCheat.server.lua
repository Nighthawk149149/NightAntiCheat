--[[
    The data will be sent to the AntiCheatData module.
    The module will hold all of the data that can be used for the checks.
]]--
print("Starting NAC...")
local EventManager = require(script.Parent.EventManager)

local tickrate = 2 -- Ticks a second
local running = true
while running do
    EventManager:Fire(EventManager.Events.PlayerList)
    EventManager:Fire(EventManager.Events.Collect)
    EventManager:Fire(EventManager.Events.Check)
    task.wait(1/tickrate)
end