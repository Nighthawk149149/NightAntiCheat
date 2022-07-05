local EventManager = require(script.Parent.Parent.EventManager)
local AntiCheatData = require(script.Parent.Parent.AntiCheatData)

EventManager:Connect(EventManager.Events.Collect, function()
    for i=1,#AntiCheatData.Players,1 do
        local player = AntiCheatData.Players[i]
        if player.Character then
            local X1, Z1 = player.Character.HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Z
            task.wait(0.25)
            local X2, Z2 = player.Character.HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Z
            local speed = math.sqrt((X2-X1)^2+(Z2-Z1)^2)
            print(speed)
            AntiCheatData.Players[i].Speed = speed
        end
    end
end)