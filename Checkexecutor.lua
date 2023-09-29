repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if identifyexecutor() ~= "Synapse X" then
    local m = Instance.new("Message", game.CoreGui)
    local RunScript
    local con
    m.Text = "WARNING: awesome script is Build for Synapse X. You may encounter bugs while using " .. identifyexecutor() .. ".\nPress BACKSPACE to stop script execution. Press ENTER to load anyway."
    con = game.UserInputService.InputBegan:Connect(function(Input, Typing)
        if Typing then return end
        if Input.KeyCode == Enum.KeyCode.Backspace then
            RunScript = false
            m:Destroy()
            con:Disconnect()
        elseif Input.KeyCode == Enum.KeyCode.Return then
            RunScript = true
            m:Destroy()
            con:Disconnect()
        end
    end)
    while task.wait(1) do
        if RunScript == false then
            return
        elseif RunScript then
            break
        end
    end
end
