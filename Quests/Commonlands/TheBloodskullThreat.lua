--[[
	Script Name		:	Quests/Commonlands/TheBloodskullThreat.lua
	Script Purpose	:	Handles the quest, "The Bloodskull Threat"
	Script Author	:	premierio015
	Script Date		:	14.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Tecera Valnos
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill six Bloodskull shamans", 6, 100, "I need to attack the encampment of Bloodskull orcs that Tecera has been tracking.", 611, 330335)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will")
	StartConversation(conversation, QuestGiver, Player, "Thank you, and be careful.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Bloodskull shamans.")

	AddQuestStepKill(Quest, 2, "I need to kill Vurog Ma'gar", 1, 100, "I need to attack the encampment of Bloodskull orcs that Tecera has been tracking.", 2488, 330336)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain Vurog Ma'gar.")

	AddQuestStepKill(Quest, 3, "I need to kill Jyrok the Stone", 1, 100, "I need to attack the encampment of Bloodskull orcs that Tecera has been tracking.", 2489, 330337)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain Jyrok the Stone.")

	AddQuestStepChat(Quest, 4, "I need to collect Arnisu Tobian's report", 1, "I need to attack the encampment of Bloodskull orcs that Tecera has been tracking.", 75, 330338)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected Arnisu Tobian's report.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the orcs and their leaders and retrieved Arnisu's report.")

	AddQuestStepChat(Quest, 5, "I need to return to Tecera", 1, "Now that I have done as she asked, I should return to Tecera.", 11, 330199)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Tecera.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Tecera.")

	UpdateQuestDescription(Quest, "I have brought Arnisu's report to Tecera. She was pleased at my success.")
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

