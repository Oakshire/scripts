--[[
    Script Name    : ItemScripts/atroopersignet.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 07:07:09
    Script Purpose : 
                   : 
--]]

local AvengeTheFreeportTrooper = 5291

function examined(Item, Player)
if not HasQuest(Player, AvengeTheFreeportTrooper) then
OfferQuest(nil, Player, AvengeTheFreeportTrooper)
end
   end

