--[[
    Script Name    : ItemScripts/CrazedMenderCoin.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.03 07:07:55
    Script Purpose : 
                   : 
--]]

local CrazedMenderCoins = 5279

function examined(Item, Player)
if not HasQuest(Player, CrazedMenderCoins) then
OfferQuest(nil, Player, CrazedMenderCoins)
end
end



