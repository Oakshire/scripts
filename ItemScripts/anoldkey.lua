--[[
    Script Name    : ItemScripts/anoldkey.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:29
    Script Purpose : 
                   : 
--]]

local TheSewerItKey = 5321

function examined(Item, Player)
if not HasQuest(Player, TheSewerItKey) and not HasCompletedQuest(Player, TheSewerItKey) then
OfferQuest(nil, Player, TheSewerItKey)
end
   end
