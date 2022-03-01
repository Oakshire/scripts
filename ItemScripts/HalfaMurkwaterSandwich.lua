--[[
    Script Name    : ItemScripts/HalfaMurkwaterSandwich.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 07:07:30
    Script Purpose : 
                   : 
--]]

local ASandwichAffair = 5294

function examined(Item, Player)
if not HasQuest(Player, ASandwichAffair) then
OfferQuest(nil, Player, ASandwichAffair)
end
   end

