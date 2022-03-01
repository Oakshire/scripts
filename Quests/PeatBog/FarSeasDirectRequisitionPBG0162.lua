--[[
	Script Name		:	FarSeasDirectRequisitionPBG0162.lua
	Script Purpose	:	Handles the quest, "Far Seas Direct Requisition PBG0162"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	FSDRPBG0162 Examine Item
	Preceded by		:	None
	Followed by		:	None
--]]

local MARINER_STITCHED_BRACERS_ID = 164053
local MARINER_STITCHED_SHAWL_ID = 164058
local MARINER_STITCHED_SLIPPERS_ID = 164059
local BOG_SLUG_ID = 1980018
local TANAIRA_ID = 1980029

function Init(Quest)
	local chance = math.random(1, 3)
	if chance == 1 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_BRACERS_ID)
	elseif chance == 2 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_SHAWL_ID)
	elseif chance == 3 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_SLIPPERS_ID)
	end

	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some bog slugs", 10, 100, "I must hunt down the creatures in the Peat Bog to fill the requisition.", 289, BOG_SLUG_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed some bog slugs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")

	AddQuestStepChat(Quest, 2, "I must speak with Tanaira", 1, "I must seek out Tanaira here in the Peat Bog.", 11, TANAIRA_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Tanaira.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the goods to Tanaira.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the client in the Peat Bog. I have been paid in full for this work, but the order was late.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end