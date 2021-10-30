--[[
    Script Name    : ItemScripts/deadlyreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:18
    Script Purpose : 
                   : 
--]]

local DeadlyReport = 5384 -- Deadly Report Quest

function examined(Item, Player)
if not HasQuest(Player, DeadlyReport) then
OfferQuest(nil, Player, DeadlyReport)
end
   end
