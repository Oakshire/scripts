--[[
    Script Name    : ItemScripts/primetarget.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 08:10:27
    Script Purpose : 
                   : 
--]]

local PrimeTarget = 5377 -- prime target quest

function examined(Item, Player)
if not HasQuest(Player, PrimeTarget) then
OfferQuest(nil, Player, PrimeTarget)
end
   end

