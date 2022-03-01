--[[
    Script Name    : ItemScripts/SewageViperEggQuestVersion.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 08:07:33
    Script Purpose : 
                   : 
--]]

local IncredibleEdibleEgg = 5297

function examined(Item, Player)
if not HasQuest(Player, IncredibleEdibleEgg) then
    OfferQuest(nil, Player, IncredibleEdibleEgg)
    end
end

