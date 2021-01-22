--[[
	Script Name	: ItemScripts/asandyboneshard.lua
	Script Purpose	: Offers the quest, "A Sandy Bone Shard"
	Script Author	: Ememjr
	Script Date	    : 2017.04.13
	Script Notes	:
--]]

local quest = 206

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)

		--remove quest starter
		if HasQuest(Player, quest) then
		   if HasItem(Player, 2563) then
		      RemoveItem(Player, 2563)
		   end
		end
	end
end