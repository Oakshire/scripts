--[[
    Script Name    : ItemScripts/astainedbraidedbelt.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 07:07:51
    Script Purpose : 
                   : 
--]]

local ABeltWithPontential = 5292

function examined(Item, Player)
if not HasQuest(Player, ABeltWithPontential) and not HasCompletedQuest(Player, ABeltWithPontential) then
OfferQuest(nil, Player, ABeltWithPontential)
end
   end

