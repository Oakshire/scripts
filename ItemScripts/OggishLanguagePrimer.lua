--[[
    Script Name    : ItemScripts/OggishLanguagePrimer.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 05:01:06
    Script Purpose : 
                   : 
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn, 14) then 
    AddLanguage(Spawn, 14)
    SendMessage(Spawn, "You have learned the basics of the Oggish language.", "White")
    RemoveItem(Spawn, 915) 
end

end
