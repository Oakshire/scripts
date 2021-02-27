--[[
	Script Name	: ItemScripts/FarSeasRequisitionWC045.lua
	Script Purpose	: Offers quest "Far Seas Requisition WC-045"
	Script Author	: premierio015
	Script Date	    : 24.02.2021
	Script Notes	:  
--]]

local quest = 5216


function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 7054)
end
	end