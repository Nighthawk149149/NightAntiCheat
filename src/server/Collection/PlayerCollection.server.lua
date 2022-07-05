local EventManager = require(script.Parent.Parent.EventManager)
local AntiCheatData = require(script.Parent.Parent.AntiCheatData)

EventManager:Connect(EventManager.Events.PlayerList, function()
    for i=1,#game.Players:GetPlayers(),1 do
        local player = game.Players:GetPlayers()[i]
        if not AntiCheatData.Players[player] then
            AntiCheatData.Players[player] = {
                Speed = 0,
            }
        end
    end
end)