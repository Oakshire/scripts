--[[
    Script Name    : ItemScripts/anunfinishedhelm.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.01 09:06:05
    Script Purpose : 
                   : 
--]]

local LionManeHelm =  5249

function examined(Item, Player)
if not HasQuest(Player, LionManeHelm) and not HasCompletedQuest(Player, LionManeHelm) then
OfferQuest(nil, Player, LionManeHelm)
end
end

function obtained(Item, Player)
if HasCompletedQuest(Player, LionManeHelm) then
RemoveItem(Player, 3826)
end
   end