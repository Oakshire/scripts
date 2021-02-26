--[[
	Script Name	: ItemScripts/FarSeasRequisitionWC124.lua
	Script Purpose	: Offers quest "Far Seas Requisition WC-002"
	Script Author	: premierio015
	Script Date	    : 24.02.2021
	Script Notes	:  
--]]

local quest = 5213


function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 7053)
end
	end