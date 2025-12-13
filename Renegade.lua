
MainWeld=nil
end
if plrgui:FindFirstChild("VISgui") then 
plrgui.VISgui:Destroy()
end
if stopreanimate then
stopreanimate()
notify("Stopping script")
wait(3)
Chat("-rs ")
wait(2.5)
Chat("-pd ")
end
end





--// Gui Visibility
function GuiVisible()
GuiOpened=not GuiOpened
if GuiOpened then
mainframe.Active=GuiOpened
mainframe.Visible=GuiOpened
for _,v in ipairs(mainframe:GetChildren()) do
if v:IsA("TextLabel") or v:IsA("TextButton") then
v.Active=true
end 
end
else
mainframe.Active=GuiOpened
mainframe.Visible=GuiOpened
for _,v in ipairs(mainframe:GetChildren()) do
if v:IsA("TextLabel") or v:IsA("TextButton") then
v.Active=false
end 
end
end
end 


--// Connect all three Functions
RunScript.MouseButton1Click:Connect(MainScript)
StopRunningScript.MouseButton1Click:Connect(StopScript)
opengui.MouseButton1Click:Connect(GuiVisible)
