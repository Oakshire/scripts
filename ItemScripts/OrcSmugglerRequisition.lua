--[[
    Script Name    : ItemScripts/OrcSmugglerRequisition.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.29 09:05:44
    Script Purpose : 
                   : 
--]]

local AnOrderOfOrcTongue = 5245

function examined(Item, Player)
if not HasQuest(Player, AnOrderOfOrcTongue) and not HasCompletedQuest(Player, AnOrderOfOrcTongue) then
OfferQuest(nil, Player, AnOrderOfOrcTongue)
elseif HasQuest(Player, AnOrderOfOrcTongue) then
AddStepProgress(Player, AnOrderOfOrcTongue, 1, 1)
RemoveItem(Player, 10202)
end
   end


