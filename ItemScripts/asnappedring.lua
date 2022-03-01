--[[
    Script Name    : ItemScripts/asnappedring.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 10:07:14
    Script Purpose : 
                   : 
--]]

local ShadowedHeartSignet = 5313

function examined(Item, Player)
if not HasQuest(Player,  ShadowedHeartSignet) and not HasCompletedQuest(Player,  ShadowedHeartSignet) then
OfferQuest(nil, Player,  ShadowedHeartSignet)
end
   end
