# Linoria Library Docs
if you want full intruction here : https://upio.gitbook.io/linorialib-docs/
So Lets Gets Started!
# library
Booting the Library :
```lua
local repo = 'https://raw.githubusercontent.com/NoobNotv2/LinoriaLibrary/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'Example menu',
    Center = true,
    AutoShow = true,
})
```
Create the tabs :
```lua
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'), -- DELETE THIS IF YOU WANT ANOTHER TAB AND THE LAST TAB YOU HAVE TO KEEP THIS SCRIPT 
}
```
Createing the Groupbox :
```lua
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Groupbox') -- Change Groupbox to any name
```
Tabboxes are a tiny bit different, but here's a basic example :
```lua
local TabBox = Tabs.Main:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab('Tab 1')
local Tab2 = TabBox:AddTab('Tab 2')

-- You can now call AddToggle, etc on the tabs you added to the Tabbox
```
# use for Callback
Createing a toggle
```lua
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'This is a toggle',
    Default = true, -- Default value (true / false)
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the toggle
    Callback = function(Value)
        print('[cb] MyToggle changed to:', Value)
    end
})
```
Calls the passed function when the toggle is updated :
```lua
Toggles.MyToggle:OnChanged(function()
    -- here we get our toggle object & then get its value
    print('MyToggle changed to:', Toggles.MyToggle.Value)
end)
```
This should print to the console: "My toggle state changed! New value: false"
```lua
Toggles.MyToggle:SetValue(false)
```
Create a button :
```lua
local MyButton = LeftGroupBox:AddButton({
    Text = 'Button',
    Func = function()
        print('You clicked a button!')
    end,
    DoubleClick = false,
    Tooltip = 'This is the main button'
})
```
Create a Sub button ( this is will show "Are you sure?" and you have to click it again to get callback) :
```lua
local MyButton2 = MyButton:AddButton({
    Text = 'Sub button',
    Func = function()
        print('You clicked a sub button!')
    end,
    DoubleClick = true, -- You will have to click this button twice to trigger the callback
    Tooltip = 'This is the sub button (double click me!)'
})
```
Add the label :
```lua
LeftGroupBox:AddLabel('This is a label')
```
Create a Slider :
```lua
LeftGroupBox:AddSlider('MySlider', {
    Text = 'This is my slider!',
    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        print('[cb] MySlider was changed! New value:', Value)
    end
})
```
More Soon!
