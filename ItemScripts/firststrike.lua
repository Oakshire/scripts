--[[
    Script Name    : ItemScripts/firststrike.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:39
    Script Purpose : 
                   : 
--]]

local FirstStrike = 5382 -- First Strike Quest

function examined(Item, Player)
if not HasQuest(Player, FirstStrike) then
OfferQuest(nil, Player, FirstStrike)
end
   end