--[[
    Script Name    : ItemScripts/anunfinishedbreastplate.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.26 05:07:51
    Script Purpose : 
                   : 
--]]

local UnfinishedBreastplate = 5700

function examined(Item, Player)
if not HasQuest(Player, UnfinishedBreastplate) then
OfferQuest(nil, Player, UnfinishedBreastplate)
end
   end
