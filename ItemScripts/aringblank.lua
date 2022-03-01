--[[
    Script Name    : ItemScripts/aringblank.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 10:07:24
    Script Purpose : 
                   : 
--]]

local TheAbhorrentRing = 5320

function examined(Item, Player)
if not HasQuest(Player,  TheAbhorrentRing) and not HasCompletedQuest(Player,  TheAbhorrentRing) then
OfferQuest(nil, Player,  TheAbhorrentRing)
 end
end

