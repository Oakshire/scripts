--[[
    Script Name    : ItemScripts/StenchsFang.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 09:07:43
    Script Purpose : 
                   : 
--]]


local AGiftFromTheSerpentsMouth = 5273

function examined(Item, Player)
if not HasQuest(Player, AGiftFromTheSerpentsMouth) and not HasCompletedQuest(Player, AGiftFromTheSerpentsMouth) then
OfferQuest(nil, Player, AGiftFromTheSerpentsMouth)
end
   end

