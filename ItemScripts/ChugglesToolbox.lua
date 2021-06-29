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

function obtained(Item, Player)
local count = GetItemCount(Item)
if HasCompletedQuest(Player, ChugglesToolbox) then
RemoveItem(Player, ChugglesToolbox)
elseif count > 1 then
RemoveItem(Player, 5014)
   end
end




