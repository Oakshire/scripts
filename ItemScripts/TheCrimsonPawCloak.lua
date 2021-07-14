--[[
    Script Name    : ItemScripts/TheCrimsonPawCloak.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 09:07:48
    Script Purpose : 
                   : 
--]]

local TheCrimsonPawCloak = 5319

function examined(Item, Player)
if not HasQuest(Player, TheCrimsonPawCloak) and not HasCompletedQuest(Player, TheCrimsonPawCloak) then
OfferQuest(nil, Player, TheCrimsonPawCloak)
end
   end

