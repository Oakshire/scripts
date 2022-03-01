--[[
	Script Name		:	AngerFang.lua
	Script Purpose	:	Handles the quest, "Anger-Fang"
	Script Author	:	jakejp
	Script Date		:	4/28/2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Ruins
	Quest Giver		:	Mardyp Prunt
	Preceded by		:	None
	Followed by		:	None
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect orc fangs", 20, 100, "Mardyp would like me to collect some orc fangs for him from the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 102, 1270005,1270017)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)

	Dialog.AddDialog("Good! Mardyp go back to crushing.")
	Dialog.AddOption("I'll go get your fangs.")

	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the orc fangs.")

	AddQuestStepChat(Quest, 2, "Return to Mardyp.", 1, "Mardyp would like me to collect some orc fangs for him from the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 102, 1270010)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Mardyp the fangs he asked for.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected the orc fangs for Mardyp.")

	UpdateQuestDescription(Quest, "I have gotten the orc fangs for Mardyp. He was pleased.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
