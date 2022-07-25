--[[
    Script Name    : ItemScripts/aropedstaff.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 01:07:42
    Script Purpose : 
                   : 
--]]

local Mancatcher = 5697

function examined(Item, Player)
if not HasQuest(Player, Mancatcher) then
OfferQuest(nil, Player, Mancatcher)
 end
end

