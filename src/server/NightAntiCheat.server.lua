--[[
    The data will be sent to the AntiCheatData module.
    The module will hold all of the data that can be used for the checks.
]]--
print("Starting NAC...")
local EventManager = require(script.Parent.EventManager)

local tickrate = 5 -- Ticks a second
local running = true
while running do
    EventManager:Fire(EventManager.Events.Tick)
    task.wait(1/tickrate)
end