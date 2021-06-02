--[[
    Script Name    : ItemScripts/HoleyHideBoots.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.01 08:06:32
    Script Purpose : 
                   : 
--]]

local ElephantHideBoots = 5250

function examined(Item, Player)
if not HasQuest(Player, ElephantHideBoots) and not HasCompletedQuest(Player, ElephantHideBoots) then
OfferQuest(nil, Player, ElephantHideBoots)
end
   end


function obtained(Item, Player)
if HasCompletedQuest(Player, ElephantHideBoots) then
RemoveItem(Player, 8137)
end
   end