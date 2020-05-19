--[[
	Script Name		:	TheUnfortunateEarth.lua
	Script Purpose	:	Handles the quest, "The Unfortunate Earth"
	Script Author	:	Shatou
	Script Date		:	1/9/2020
	Script Notes	:	**NEED LOGS FOR BOTANIST LITH***

	Zone			:	Peat Bog
	Quest Giver		:	Botanist Lith
	Preceded by		:	None
	Followed by		:	None
--]]

local UNFORTUNATE_EARTH_QUEST_ID = 518
local BOG_MUD_ID = 1980110
local BOG_SLUG_ID = 1980018
local BOG_SLUDGE_ID = 1980002
local BOTANIST_LITH_ID = 1980001
local LIEUTENANT_DAWSON_ID = 1980012

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to collect some mud samples from the Peat Bog.", 4, 100, "I need to collect the stomach contents of some of the creatures within the Peat Bog along with some mud samples.", 415, BOG_MUD_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	
	AddQuestStepKill(Quest, 2, "I need to collect the stomach contents of bog slugs.", 4, 75, "I need to collect the stomach contents of some of the creatures within the Peat Bog along with some mud samples.", 162, BOG_SLUG_ID)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	
	AddQuestStepKill(Quest, 3, "I need to collect the stomach contents of bog sludges.", 4, 75, "I need to collect the stomach contents of some of the creatures within the Peat Bog along with some mud samples.", 170, BOG_SLUDGE_ID)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, UNFORTUNATE_EARTH_QUEST_ID, 1) and QuestStepIsComplete(Player, UNFORTUNATE_EARTH_QUEST_ID, 2) and QuestStepIsComplete(Player, UNFORTUNATE_EARTH_QUEST_ID, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have collected what Nareh Lith requested.")

		AddQuestStepChat(Quest, 4, "I need to speak with Nareh Lith near the entrance to Nettleville.", 1, "I need to return these items to Nareh Lith.", 11, BOTANIST_LITH_ID)
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some mud samples.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the stomach contents of some bog slugs.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the stomach contents of some bog sludges.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Nareh Lith.")

	AddQuestStepChat(Quest, 5, "I need to speak with Lieutenant Dawson near the gates to Nettleville.", 1, "I need to return these items to Nareh Lith.", 11, LIEUTENANT_DAWSON_ID)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Nareh Lith.")

	UpdateQuestDescription(Quest, "I have given Nareh Lith what he requested. A quick test on the substances worried Nareh, he believes he's found minerals that suggest foreign substances being introduced into the environment of the Peat Bog. Nareh is worried that these substances originated in the Caves.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end