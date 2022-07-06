local EventManager = require(script.Parent.Parent.EventManager)
local AntiCheatData = require(script.Parent.Parent.AntiCheatData)

EventManager:Connect(EventManager.Events.Check, function()
    for userid in AntiCheatData.Players do
        local player = AntiCheatData.Players[userid]
        if player.Speed > AntiCheatData.MAX_SPEED/4 then
            warn("UserId " .. userid .. " has speed " .. player.Speed .. ".")
        end
    end
end)