--[[
    Script Name    : ItemScripts/tacticalreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 08:10:30
    Script Purpose : 
                   : 
--]]

local TacticalReport = 5378 -- Tactical Report Quest

function examined(Item, Player)
if not HasQuest(Player, TacticalReport) then
OfferQuest(nil, Player, TacticalReport)
end
   end

