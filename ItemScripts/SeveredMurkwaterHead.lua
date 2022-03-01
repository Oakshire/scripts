--[[
    Script Name    : ItemScripts/SeveredMurkwaterHead.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 08:07:41
    Script Purpose : 
                   : 
--]]

local Vengeance = 5295

function examined(Item, Player)
if not HasQuest(Player, Vengeance) then
OfferQuest(nil, Player, Vengeance)
end 
   end

