--[[
	Script Name	:	aquatic_research_notebook.lua
	Script Purpose	:	Handles the quest, "Aquatic Research Notebook"
	Script Author	:	Request
	Script Date	:	11/2/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone		:	Outpost of the Overlord
	Quest Giver	:	
	Preceded by	:	None
	Followed by	:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt a shoal glider.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 168, 2780012)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the body of a shoal glider.")

	AddQuestStepKill(Quest, 2, "I need to hunt a needlefang.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 86, 2780024)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the body of a needlefang.")

	AddQuestStepKill(Quest, 3, "I need to hunt a reef turtle.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 158, 2780016)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the body of a reef turtle.")

	AddQuestStepKill(Quest, 4, "I need to hunt a sandstalker.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 172, 2780023, 2780032)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have the body of a sandstalker.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the four types of animals listed in the notebook.")

	AddQuestStepChat(Quest, 5, "I need to take these specimens to Sythor the All-Seeing.", 1, "I need to take the collected specimens to Sythor the All-Seeing.", 11, 2780041)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I took the animal bodies to Sythor the All-Seeing.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered the four animal specimens to Sythor the All-Seeing.")

	UpdateQuestDescription(Quest, "I talked to Sythor the All-Seeing at the top of his tower at outpost.  Apparently his apprentice, Ludz, was an irresistible treat for the sandstalkers.  He gave me the reward that he had originally planned to give to Ludz.")
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
