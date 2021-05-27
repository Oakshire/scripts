--[[
    Script Name    : ItemScripts/FarSeasRequisitionFG073.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.26 06:05:35
    Script Purpose : 
                   : 
--]]

local quest = 5241

function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 7049)
end
   end
