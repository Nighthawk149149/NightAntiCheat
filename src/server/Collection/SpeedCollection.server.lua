local EventManager = require(script.Parent.Parent.EventManager)

EventManager:Connect(EventManager.Events.Tick, function()
    print("Tick")
end)