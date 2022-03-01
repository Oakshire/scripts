--[[
    Script Name    : ItemScripts/GorwishLanguagePrimer.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 05:01:43
    Script Purpose : 
                   : 
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn, 36) then 
    AddLanguage(Spawn, 36)
    SendMessage(Spawn, "You have learned the basics of the Gorwish language.", "White")
    RemoveItem(Spawn, 912) 
end

end
