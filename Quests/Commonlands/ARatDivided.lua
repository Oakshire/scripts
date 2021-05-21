--[[
	Script Name		:	Quests/Commonlands/ARatDivided.lua
	Script Purpose	:	Handles the quest, "A Rat Divided"
	Script Author	:	premierio015
	Script Date		:	21.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ferink
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Amoora", 1, "I need to find Amoora in the kerran camp. I should head across the river to the south west.", 11, 330063)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll return.")
	StartConversation(conversation, QuestGiver, Player, "My Amoora...")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should return to Ferink.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Amoora. I should return to Ferink.")

	AddQuestStepChat(Quest, 2, "I should return and speak with Ferink", 1, "I found Amoora. I should go talk to Ferink.", 11, 330046)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Ferink.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned and spoken to Ferink.")

	UpdateQuestDescription(Quest, "I returned to Ferink after speaking with Amoora.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

