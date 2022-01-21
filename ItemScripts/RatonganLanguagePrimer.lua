--[[
    Script Name    : ItemScripts/RatonganLanguagePrimer.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 05:01:13
    Script Purpose : 
                   : 
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn, 26) then 
    AddLanguage(Spawn, 26)
    SendMessage(Spawn, "You have learned the basics of the Ratongan language.", "White")
    RemoveItem(Spawn, 914) 
end

end