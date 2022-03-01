--[[
    Script Name    : ItemScripts/YkeshanLanguagePrimer.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 05:01:04
    Script Purpose : 
                   : 
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn, 15) then 
    AddLanguage(Spawn, 15)
    SendMessage(Spawn, "You have learned the basics of the Yakeshan language.", "White")
    RemoveItem(Spawn, 911) 
end

end
