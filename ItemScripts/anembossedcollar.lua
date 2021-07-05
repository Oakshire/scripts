--[[
    Script Name    : ItemScripts/anembossedcollar.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 09:07:15
    Script Purpose : 
                   : 
--]]

local ExterminatingTheContaminatedRats = 5287

function examined(Item, Player)
if not HasQuest(Player, ExterminatingTheContaminatedRats) and not HasCompletedQuest(Player, ExterminatingTheContaminatedRats) then
OfferQuest(nil, Player, ExterminatingTheContaminatedRats)
end
   end
