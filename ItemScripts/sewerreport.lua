--[[
    Script Name    : ItemScripts/sewerreport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 09:07:30
    Script Purpose : 
                   : 
--]]

local FoulOrder = 5282
local ItemID = 12109

function examined(Item, Player)
if not HasQuest(Player, FoulOrder) then
OfferQuest(nil, Player, FoulOrder)
end
end

function obtained(Item, Player)
if GetItemCount(Item) > 1 then
RemoveItem(Player, ItemID)
end
   end