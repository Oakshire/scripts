--[[
    Script Name    : ItemScripts/amisspelledGuttersnipenote.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.25 06:06:02
    Script Purpose : 
                   : 
--]]


local BalancingTheGangs = 5260

function examined(Item, Player)
if not HasQuest(Player, BalancingTheGangs) then
OfferQuest(nil, Player, BalancingTheGangs)
end
   end


