--[[
    Script Name    : ItemScripts/sewermemorandum.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 08:07:28
    Script Purpose : 
                   : 
--]]

local StickySituation = 5275

function examined(Item, Player)
if not HasQuest(Player, StickySituation) then
OfferQuest(nil, Player, StickySituation)
end
end



