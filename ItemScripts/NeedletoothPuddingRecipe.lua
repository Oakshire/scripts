--[[
    Script Name    : ItemScripts/NeedletoothPuddingRecipe.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 09:07:26
    Script Purpose : 
                   : 
--]]

local EdgewaterNeedletoothPudding = 5300

function examined(Item, Player)
if not HasQuest(Player, EdgewaterNeedletoothPudding) then
OfferQuest(nil, Player, EdgewaterNeedletoothPudding)
end
end

