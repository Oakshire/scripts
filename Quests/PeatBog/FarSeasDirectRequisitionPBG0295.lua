--[[
	Script Name		:	FarSeasDirectRequisitionPBG0295.lua
	Script Purpose	:	Handles the quest, "Far Seas Direct Requisition PBG0295"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	FSDRPBG0295 Examine Item
	Preceded by		:	None
	Followed by		:	None
--]]

local FAR_SEAS_DR_PBG0295_QUEST_ID = 516
local TANAIRA_ID = 2340040
local MUCK_TOAD_ID = 8290024
local SILT_SUCKER_ID = 8290029
local MARINER_STITCHED_BRACERS_ID = 164053
local MARINER_STITCHED_SHAWL_ID = 164058
local MARINER_STITCHED_SLIPPERS_ID = 164059
local MARINER_STITCHED_GLOVES_ID = 164055
local MARINER_STITCHED_GOWN_ID = 164056
local MARINER_STITCHED_LEGGINGS_ID = 164057

function Init(Quest)
	local chance = math.random(1, 6)
	if chance == 1 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_BRACERS_ID)
	elseif chance == 2 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_SHAWL_ID)
	elseif chance == 3 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_SLIPPERS_ID)
	elseif chance == 4 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_GLOVES_ID)
	elseif chance == 5 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_GOWN_ID)
	elseif chance == 6 then
		AddQuestRewardItem(Quest, MARINER_STITCHED_LEGGINGS_ID)
	end


	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I must collect six pairs of toad legs", 6, 100, "I must hunt down the creatures in the Peat Bog to fill the requisition.", 139, MUCK_TOAD_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	
	AddQuestStepKill(Quest, 2, "I must hunt down a silt sucker", 1, 100, "I must hunt down the creatures in the Peat Bog to fill the requisition.", 345, SILT_SUCKER_ID)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, FAR_SEAS_DR_PBG0295_QUEST_ID, 1) and QuestStepIsComplete(Player, FAR_SEAS_DR_PBG0295_QUEST_ID, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")

		AddQuestStepChat(Quest, 3, "I must speak with Tanaira", 1, "I must seek out Tanaira here in the Peat Bog.", 11, TANAIRA_ID)
		AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected enough toad legs.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain a silt sucker.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke to Tanaira.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the goods to Tanaira.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the client in the Peat Bog. I have been paid in full for this work, but the order was late.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end