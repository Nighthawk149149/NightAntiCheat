local EventManager = require(script.Parent.Parent.EventManager)
local AntiCheatData = require(script.Parent.Parent.AntiCheatData)

EventManager:Connect(EventManager.Events.Checks, function()
    local players = AntiCheatData.Players
    for i=1,#players,1 do
        local player = players[i]
        if not player.Speed then continue end
        if player.Speed > AntiCheatData.MAX_SPEED then
            print("Player " .. player.Name .. " has speed " .. player.Speed .. ".")
        end
    end
end)