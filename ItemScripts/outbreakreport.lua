--[[
    Script Name    : ItemScripts/outbreakreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 07:07:49
    Script Purpose : 
                   : 
--]]

local Outbreak = 5293

function examined(Item, Player)
if not HasQuest(Player, Outbreak) then
OfferQuest(nil, Player, Outbreak)
end 
end

