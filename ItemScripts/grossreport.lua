--[[
    Script Name    : ItemScripts/grossreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:38
    Script Purpose : 
                   : 
--]]

local GrossReport = 5381 -- Gross Report  Quest

function examined(Item, Player)
if not HasQuest(Player, GrossReport) then
OfferQuest(nil, Player, GrossReport)
end
   end
