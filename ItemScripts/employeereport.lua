--[[
    Script Name    : ItemScripts/employeereport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.06 09:07:02
    Script Purpose : 
                   : 
--]]

local MutilatedEmployees = 5302

function examined(Item, Player)
if not HasQuest(Player, MutilatedEmployees) then
OfferQuest(nil, Player, MutilatedEmployees)
end
  end


