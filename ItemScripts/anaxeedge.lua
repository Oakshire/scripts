--[[
    Script Name    : ItemScripts/anaxeedge.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 08:07:27
    Script Purpose : 
                   : 
--]]

local Gnasher = 5277

function examined(Item, Player)
if not HasQuest(Player, Gnasher) and not HasCompletedQuest(Player, Gnasher) then
OfferQuest(nil, Player, Gnasher)
end
end

function obtained(Item, Player)
if HasQuest(Player, Gnasher) or HasCompletedQuest(Player, Gnasher) or GetItemCount(3560) > 1 then
RemoveItem(Player, 3560)
end
   end

