--[[
    Script Name    : ItemScripts/lockedhandcuffs.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 02:07:16
    Script Purpose : 
                   : 
--]]

local OrcishManacles = 5698

function examined(Item, Player)
if not HasQuest(Player, OrcishManacles) then
OfferQuest(nil, Player, OrcishManacles)
 end
end

