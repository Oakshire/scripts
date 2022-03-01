--[[
    Script Name    : ItemScripts/ABrokenHarness.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.29 09:05:24
    Script Purpose : 
                   : 
--]]

local TheTrainingGrounds = 5247

function examined(Item, Player)
if not HasQuest(Player, TheTrainingGrounds) and not HasCompletedQuest(Player, TheTrainingGrounds) then
OfferQuest(nil, Player, TheTrainingGrounds)
end
end

function obtained(Item, Player)
if HasCompletedQuest(Player, TheTrainingGrounds) then
RemoveItem(Player, 1281)
end
   end