--[[
    Script Name    : ItemScripts/FarSeasRequisitionFG212.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.26 07:05:05
    Script Purpose : 
                   : 
--]]

local quest = 5243

function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 7051)
end
   end

