--[[
    Script Name    : ItemScripts/burnedoutlightstone.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.30 09:05:28
    Script Purpose : 
                   : 
--]]

local TheReturnOfTheLight = 485

function examined(Item, Player)
if not HasQuest(Player,  TheReturnOfTheLight) and not HasCompletedQuest(Player,  TheReturnOfTheLight) then
OfferQuest(nil, Player,  TheReturnOfTheLight)
end
   end
