--[[
    Script Name    : ItemScripts/plaguereport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 09:07:22
    Script Purpose : 
                   : 
--]]

local EliminationOfTheInfected = 5271

function examined(Item, Player)
if not HasQuest(Player,  EliminationOfTheInfected) and not HasCompletedQuest(Player,  EliminationOfTheInfected) then
OfferQuest(nil, Player,  EliminationOfTheInfected)
end
end



