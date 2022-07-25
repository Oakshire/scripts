--[[
    Script Name    : ItemScripts/abrokenmorningstar.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.23 11:07:59
    Script Purpose : 
                   : 
--]]

local TheChomper = 5696

function examined(Item, Player)
if not HasQuest(Player, TheChomper) then
OfferQuest(nil, Player, TheChomper)
end
   end

