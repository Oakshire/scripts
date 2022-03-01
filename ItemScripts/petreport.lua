--[[
    Script Name    : ItemScripts/petreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 08:07:04
    Script Purpose : 
                   : 
--]]

local DiscardedPets = 5276

function examined(Item, Player)
if not HasQuest(Player, DiscardedPets) then
OfferQuest(nil, Player, DiscardedPets)
end
end


function obtained(Item, Player)
if GetItemCount(10365) > 1 then
RemoveItem(Player, 10365)
end
   end
