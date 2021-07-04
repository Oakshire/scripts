--[[
    Script Name    : ItemScripts/MarkedCards.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 09:07:39
    Script Purpose : 
                   : 
--]]

local MarkedMurkwaterCards = 5280
local ItemID = 9363

function examined(Item, Player)
if not HasQuest(Player, MarkedMurkwaterCards) then
OfferQuest(nil, Player, MarkedMurkwaterCards)
end
end

function obtained(Item, Player)
if GetItemCount(Item) > 1 then
RemoveItem(Player, ItemID)
end
   end
