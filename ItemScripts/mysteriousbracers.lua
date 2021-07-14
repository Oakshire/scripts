--[[
    Script Name    : ItemScripts/mysteriousbracers.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.13 08:07:02
    Script Purpose : 
                   : 
--]]

local QUEST = 258
function examined(Item, Player)
    if not HasQuest(Player, QUEST) and not HasCompletedQuest(Player, QUEST) then
  OfferQuest(nil, Player, QUEST)
 end
       end