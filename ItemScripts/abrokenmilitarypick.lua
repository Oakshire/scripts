--[[
    Script Name    : ItemScripts/abrokenmilitarypick.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 07:07:37
    Script Purpose : 
                   : 
--]]

local YeOldOneTimePick = 5315

function examined(Item, Player)
if not HasQuest(Player,  YeOldOneTimePick) and not HasCompletedQuest(Player, YeOldOneTimePick) then
OfferQuest(nil, Player, YeOldOneTimePick)
end
    end

