--[[
    Script Name    : ItemScripts/abadlypolishedsteelkey.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 09:07:45
    Script Purpose : 
                   : 
--]]

local Polishedsteelkey = 5708

function examined(Item, Player)
if not HasQuest(Player, Polishedsteelkey) then
OfferQuest(nil, Player, Polishedsteelkey)
  end
end

