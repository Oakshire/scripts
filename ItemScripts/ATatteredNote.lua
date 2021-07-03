--[[
    Script Name    : ItemScripts/ATatteredNote.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 07:07:16
    Script Purpose : 
                   : 
--]]

local TheFallenRetriever = 5274
local ItemID = 2976

function examined(Item, Player)
if not HasQuest(Player, TheFallenRetriever) and not HasCompletedQuest(Player, TheFallenRetriever) then
OfferQuest(nil, Player, TheFallenRetriever)
end
   end


function obtained(Item, Player)
if HasQuest(Player, TheFallenRetriever) or HasCompletedQuest(Player, TheFallenRetriever) or GetItemCount(Item) > 1 then
RemoveItem(Player, ItemID)
end
   end