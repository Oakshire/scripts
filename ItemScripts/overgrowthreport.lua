--[[
    Script Name    : ItemScripts/overgrowthreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 08:07:45
    Script Purpose : 
                   : 
--]]

local OvergrowthImpact = 5298

function examined(Item, Player)
if not HasQuest(Player, OvergrowthImpact) then
    OfferQuest(nil, Player, OvergrowthImpact)
end
   end
