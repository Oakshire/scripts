--[[
    Script Name    : ItemScripts/CrackedHalflingSkull.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 10:07:52
    Script Purpose : 
                   : 
--]]

local TheBrokenHalflingSkull = 5312

function examined(Item, Player)
if not HasQuest(Player, TheBrokenHalflingSkull) then
OfferQuest(nil, Player, TheBrokenHalflingSkull)
end
   end
 