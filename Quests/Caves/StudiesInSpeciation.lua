--[[
	Script Name		:	StudiesinSpeciation.lua
	Script Purpose	:	Handles the quest, "Studies in Speciation"
	Script Author	:	Shatou
	Script Date		:	1/5/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Kahla Ulno
	Preceded by		:	None
	Followed by		:	None
--]]

local A_WHITE_SPIDER_ID = 1970012
local A_WHITE_SPIDERLING_ID = 1970002
local ALBINO_ARACHNID_ID = 1970010
local SHALE_BAT_ID = 1970014
local TERRA_BAT_ID = 1970023
local CAVE_SERPENT_ID = 1970008
local KAHLA_ULNO_ID = 1970026

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need four cave spider bodies.", 4, 100, "I need to collect some samples of the creatures in the Caves for Kahla.", 611, A_WHITE_SPIDER_ID, A_WHITE_SPIDERLING_ID, ALBINO_ARACHNID_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the cave spider bodies.")

	AddQuestStepKill(Quest, 2, "I need four cave serpent bodies.", 4, 100, "I need to collect some samples of the creatures in the Caves for Kahla.", 611, CAVE_SERPENT_ID)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the cave serpent bodies.")

	AddQuestStepKill(Quest, 3, "I need four cave bat bodies.", 4, 100, "I need to collect some samples of the creatures in the Caves for Kahla.", 611, SHALE_BAT_ID, TERRA_BAT_ID)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the cave bat bodies.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the samples for Kahla.")

	AddQuestStepChat(Quest, 4, "I must speak with Kahla.", 1, "I need to bring these samples back to Kahla.", 11, KAHLA_ULNO_ID)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Kahla.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the samples to Kahla.")

	UpdateQuestDescription(Quest, "I have given Kahla the samples she asked for. She thanked me for my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end