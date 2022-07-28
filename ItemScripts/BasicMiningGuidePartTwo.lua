--[[
    Script Name    : ItemScripts/BasicMiningGuidePartTwo.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.27 05:07:56
    Script Purpose : 
                   : 
--]]

local  SabertoothMinersGuidePartTwo = 5706

function examined(Item, Player)
if not HasQuest(Player, SabertoothMinersGuidePartTwo) and not HasCompletedQuest(Player, SabertoothMinersGuidePartTwo) then
OfferQuest(nil, Player, SabertoothMinersGuidePartTwo)
end
   end

