--[[
    Script Name    : ItemScripts/PotionofEarthwalking.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.26 09:05:07
    Script Purpose : 
                   : 
--]]

local ValleyOfTheRogueMagi = 5239

function examined(Item, Player)
if not HasQuest(Player, ValleyOfTheRogueMagi) then
OfferQuest(Item, Player, ValleyOfTheRogueMagi)
end 
   end