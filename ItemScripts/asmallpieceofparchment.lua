--[[
    Script Name    : ItemScripts/asmallpieceofparchment.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 10:07:23
    Script Purpose : 
                   : 
--]]

local TheFallenAssassin = 5283
local ItemID = 2804

function examined(Item, Player)
if not HasQuest(Player, TheFallenAssassin) and not HasCompletedQuest(Player, TheFallenAssassin) then
OfferQuest(nil, Player, TheFallenAssassin)
end
   end

function obtained(Item, Player)
if HasQuest(Player, TheFallenAssassin) or HasCompletedQuest(Player, TheFallenAssassin) then
RemoveItem(Player, ItemID)
end
   end