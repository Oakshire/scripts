--[[
    Script Name    : ItemScripts/ChugglesToolbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.29 09:06:59
    Script Purpose : 
                   : 
--]]

local ChugglesToolbox = 483


function examined(Item, Player)
if not HasQuest(Player, ChugglesToolbox) and not HasCompletedQuest(Player, ChugglesToolbox) then
OfferQuest(nil, Player, ChugglesToolbox)
end
   end




