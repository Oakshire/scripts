--[[
    Script Name    : ItemScripts/anolddagger.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 09:07:36
    Script Purpose : 
                   : 
--]]

local SoulWailer = 5318

function examined(Item, Player)
if not HasQuest(Player, SoulWailer) and not HasCompletedQuest(Player, SoulWailer) then
OfferQuest(nil, Player, SoulWailer)
end
   end

