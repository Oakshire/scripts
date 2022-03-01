--[[
    Script Name    : ItemScripts/viperreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 08:07:58
    Script Purpose : 
                   : 
--]]

local ViperAttacks = 5299

function examined(Item, Player)
if not HasQuest(Player, ViperAttacks) then
OfferQuest(nil, Player, ViperAttacks)
end
end

