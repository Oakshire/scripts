--[[
    Script Name    : ItemScripts/PungentGounds.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 09:07:53
    Script Purpose : 
                   : 
--]]

local MurkwaterCoffee = 5281
local ItemID = 11140

function examined(Item, Player)
if not HasQuest(Player, MurkwaterCoffee) then
OfferQuest(nil, Player, MurkwaterCoffee)
end
end

function obtained(Item, Player)
if GetItemCount(Item) > 1 then
RemoveItem(Player, ItemID)
end
   end


