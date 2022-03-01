--[[
	Script Name	: ItemScripts/FabricPatch.lua
	Script Purpose	: Offers and updates the language quest, "The Patchwork Tapestry"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

local LANGUAGE_QUEST = 299

function examined(Item, Player)
	if not HasQuest(Player, LANGUAGE_QUEST) and not HasCompletedQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
		
		-- Fabric Patch
		if HasItem(Player, 6079) then
			RemoveItem(Player, 6079)
		end
	end
end