--[[
    Script Name    : ItemScripts/inquisitor.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 08:10:48
    Script Purpose : 
                   : 
--]]

local Inquisitor = 5379 -- Inquisitor quest

function examined(Item, Player)
if not HasQuest(Player, Inquisitor) then
OfferQuest(nil, Player, Inquisitor)
end
   end


