--[[
    Script Name    : ItemScripts/abrokenmusicbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.25 06:06:14
    Script Purpose : 
                   : 
--]]

local RewardForAMissingMusicBox = 5261

function examined(Item, Player)
if not HasQuest(Player, RewardForAMissingMusicBox) and not HasCompletedQuest(Player, RewardForAMissingMusicBox) then
OfferQuest(nil, Player, RewardForAMissingMusicBox)
end
   end
