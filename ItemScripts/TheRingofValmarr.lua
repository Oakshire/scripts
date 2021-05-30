--[[
    Script Name    : ItemScripts/TheRingofValmarr.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.29 08:05:47
    Script Purpose : 
                   : 
--]]

local ARingsCalling = 5246

function examined(Item, Player)
if not HasQuest(Player, ARingsCalling) and not HasCompletedQuest(Player, ARingsCalling) then
OfferQuest(nil, Player, ARingsCalling)
end
   end

function obtained(Item, Player)
if HasCompletedQuest(Player, ARingsCalling) then
RemoveItem(Player, 14224)
end  
   end
