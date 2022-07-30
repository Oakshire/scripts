--[[
    Script Name    : ItemScripts/afilthybronzekey.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 09:07:27
    Script Purpose : 
                   : 
--]]

local AFilthybronzekey = 5707 -- quest ID

function examined(Item, Player)
if not HasQuest(Player, AFilthybronzekey) then
OfferQuest(nil, Player, AFilthybronzekey)
   end
end

