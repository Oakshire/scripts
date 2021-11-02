--[[
    Script Name    : ItemScripts/achippedaxehead.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 06:11:05
    Script Purpose : 
                   : 
--]]

local AnAxeForAllAges = 5388

function examined(Item, Player)
if not HasQuest(Player, AnAxeForAllAges) and not HasCompletedQuest(Player, AnAxeForAllAges) then
OfferQuest(nil, Player, AnAxeForAllAges)
end
   end

