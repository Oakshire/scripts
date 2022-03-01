--[[
    Script Name    : ItemScripts/anacidicgland.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 08:07:57
    Script Purpose : 
                   : 
--]]

local SavingTheSewagePumps = 5284

function examined(Item, Player)
if not HasQuest(Player, SavingTheSewagePumps) then
OfferQuest(nil, Player, SavingTheSewagePumps)
end
end



