--[[
	Script Name	: ItemScripts/FarSeasRequisitionWC077.lua
	Script Purpose	: Offers quest "Far Seas Requisition WC-077"
	Script Author	: premierio015
	Script Date	    : 24.02.2021
	Script Notes	:  
--]]

local quest = 5215


function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 7055)
end
	end