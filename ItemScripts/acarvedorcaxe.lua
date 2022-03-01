--[[
    Script Name    : ItemScripts/acarvedorcaxe.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.25 07:06:22
    Script Purpose : 
                   : 
--]]

local AnAxesRevenge = 5262

function examined(Item, Player)
if not HasQuest(Player, AnAxesRevenge) and not HasCompletedQuest(Player, AnAxesRevenge) then
OfferQuest(nil, Player, AnAxesRevenge)
end
   end
