--[[
	Script Name		:	ItemScripts/FoldingStand.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	
--]]

-- Quest ID's
local CONFRONTATION = 321

-- Item ID's
local FOLDING_STAND = 7379

function examined(Item, Player)
	if HasQuest(Player, CONFRONTATION) and GetQuestStep(Player, CONFRONTATION) == 2 then
		-- check distance to target location first
		local con = CreateConversation()
		
		AddConversationOption(con, "Place the stand.", "PlaceStand")
		StartDialogConversation(con, 2, Item, Player, "This is the folding stand on which you will place the Soul Spike in order to destroy it.")
	end
end

function PlaceStand(Item, Player)
	local con = CreateConversation()
	
	SpawnMob(GetZone(Player), 2340126, false, GetX(Player), GetY(Player), GetZ(Player), GetHeading(Player))
	
	AddConversationOption(con, "Step back from the stand.", "StepBack")
	StartDialogConversation(con, 2, Item, Player, "You place the stand on the ground.")
end

function StepBack(Item, Player)
	CloseItemConversation(Item, Player)
	
	while HasItem(Player, FOLDING_STAND, 1) do
		RemoveItem(Player, FOLDING_STAND)
	end
end