--[[
    Script Name    : ItemScripts/warningmessage.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 07:07:22
    Script Purpose : 
                   : 
--]]

local AWarningToTheMurkwaters = 5268

function examined(Item, Player)
if not HasQuest(Player, AWarningToTheMurkwaters) and not HasCompletedQuest(Player, AWarningToTheMurkwaters) then
OfferQuest(nil, Player, AWarningToTheMurkwaters)
end
end

function obtained(Item, Player)
if HasQuest(Player, AWarningToTheMurkwaters) or HasCompletedQuest(Player, AWarningToTheMurkwaters) then
RemoveItem(Player, 15325)
end
   end
