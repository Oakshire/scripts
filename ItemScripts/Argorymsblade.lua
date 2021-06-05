--[[
    Script Name    : ItemScripts/Argorymsblade.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.04 09:06:10
    Script Purpose : 
                   : 
--]]


local AnOrcishTrinket = 5254

function examined(Item, Player)
if not HasQuest(Player, AnOrcishTrinket) and not HasCompletedQuest(Player, AnOrcishTrinket) then
OfferQuest(nil, Player, AnOrcishTrinket)
end
   end