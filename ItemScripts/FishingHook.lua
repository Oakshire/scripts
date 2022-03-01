--[[
    Script Name    : ItemScripts/FishingHook.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.30 09:10:47
    Script Purpose : 
                   : 
--]]

local BlowingOffSteam = 5387 -- Blowing off Steam quest

function examined(Item, Player)
if not HasQuest(Player, BlowingOffSteam) then
OfferQuest(nil, Player, BlowingOffSteam)
end
   end

