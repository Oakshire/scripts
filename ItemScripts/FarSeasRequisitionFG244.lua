--[[
    Script Name    : ItemScripts/FarSeasRequisitionFG244.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.26 07:05:44
    Script Purpose : 
                   : 
--]]

local quest = 5244

function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 7052)
end
   end