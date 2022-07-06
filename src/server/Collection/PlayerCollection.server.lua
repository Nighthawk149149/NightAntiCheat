local EventManager = require(script.Parent.Parent.EventManager)
local AntiCheatData = require(script.Parent.Parent.AntiCheatData)

EventManager:Connect(EventManager.Events.PlayerList, function()
    for i=1,#game.Players:GetPlayers(),1 do
        local userid = game.Players:GetPlayers()[i].UserId
        if not AntiCheatData.Players[userid] then
            AntiCheatData.Players[userid] = {
                Speed = 0,
            }
        end
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    local userid = player.UserId
    AntiCheatData.Players[userid] = nil
end)