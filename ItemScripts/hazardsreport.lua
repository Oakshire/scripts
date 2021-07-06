--[[
    Script Name    : ItemScripts/hazardsreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.06 09:07:15
    Script Purpose : 
                   : 
--]]

local EmployeeHazards = 5301

function examined(Item, Player)
if not HasQuest(Player, EmployeeHazards) then
OfferQuest(nil, Player, EmployeeHazards)
end
  end

