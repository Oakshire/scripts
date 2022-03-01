--[[
    Script Name    : ItemScripts/atarnishedscepter.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.13 06:10:03
    Script Purpose : 
                   : 
--]]


local AnAncientScepter = 5369

function examined(Item, Player)
if not HasQuest(Player, AnAncientScepter) and not HasCompletedQuest(Player, AnAncientScepter) then
OfferQuest(nil, Player, AnAncientScepter)
end
   end

