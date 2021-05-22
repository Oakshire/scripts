--[[
	Script Name		:	Quests/Commonlands/TheLovebirdsRoost.lua
	Script Purpose	:	Handles the quest, "The Lovebirds' Roost"
	Script Author	:	premierio015
	Script Date		:	21.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ferink
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Jojo", 1, "I need to find Jojo in the Seafarer's Roost in the City of Freeport and speak with him about Ferink's love troubles.", 11, 5590401)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll find your friend.")
	StartConversation(conversation, QuestGiver, Player, "You'll do that for me? Oh thank you; you are a good friend. I will be grateful to you always!  Her fur is so soft... ")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Jojo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Jojo.")

	AddQuestStepChat(Quest, 2, "Take the necklace to Riki", 1, "I should take the necklace to Riki in the Commonlands.", 579, 330045)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I took the necklace to Riki.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Riki.")

	AddQuestStepChat(Quest, 3, "Speak to Ferink", 1, "I should tell Ferink the good news.", 11, 330046)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke to Ferink.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have returned to Ferink in the Commonlands.")

	UpdateQuestDescription(Quest, "I returned to Ferink after giving the necklace to Riki.")
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
