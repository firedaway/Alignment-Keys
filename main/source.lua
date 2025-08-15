local userInputService = game:GetService("UserInputService")
local starterGui = game:GetService("StarterGui")

starterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)

userInputService.InputBegan:Connect(function(key, gameProcessed)
	if gameProcessed then
		return
	end
	
	if key.KeyCode == Enum.KeyCode.Comma then
		workspace.CurrentCamera:PanUnits(-1)
	elseif key.KeyCode == Enum.KeyCode.Period then
		workspace.CurrentCamera:PanUnits(1)
	elseif key.KeyCode == Enum.KeyCode.PageDown then
		workspace.CurrentCamera:TiltUnits(-1)
	elseif key.KeyCode == Enum.KeyCode.PageUp then
		workspace.CurrentCamera:TiltUnits(1)
	end
end)
