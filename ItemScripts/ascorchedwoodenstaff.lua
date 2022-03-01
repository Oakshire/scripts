--[[
    Script Name    : ItemScripts/ascorchedwoodenstaff.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 07:07:16
    Script Purpose : 
                   : 
--]]

local ScorchedWooenStaff = 5314

function examined(Item, Player)
if not HasQuest(Player, ScorchedWooenStaff) and not HasCompletedQuest(Player, ScorchedWooenStaff) then
OfferQuest(nil, Player, ScorchedWooenStaff)
   end
end

