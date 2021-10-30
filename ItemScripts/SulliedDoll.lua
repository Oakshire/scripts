--[[
    Script Name    : ItemScripts/SulliedDoll.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:32
    Script Purpose : 
                   : 
--]]

local DestroyTheUndead = 5383 -- Destroy the Undead Quest

function examined(Item, Player)
if not HasQuest(Player, DestroyTheUndead) then
OfferQuest(nil, Player, DestroyTheUndead)
end
   end
