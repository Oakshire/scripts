--[[
	Script Name		:	Quests/NektulosForest/trust_must_be_earned_part_1.lua
	Script Purpose	:	Handles the quest, "Trust Must Be Earned, Part 1"
	Script Author	:	premierio015
	Script Date		:	20.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Nektulos Forest
	Quest Giver		:	Bruhn K'Viir 
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find the attack plans", 1, 100, "I must steal the attack plans from the tent of the Nerius Pirate Tactician in Nektulos Forest. I can find the tent in one of the Nerius camps on the beach.", 374)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Of course.")
	StartConversation(conversation, QuestGiver, Player, "Good. Be quick about it.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the attack plans")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have retrieved the plans from the Tactician's tent.")

	AddQuestStepChat(Quest, 2, "I should take these plans to Bruhn K'Viir", 1, "I need to take these plans to Bruhn K'Viir in Nektulos Forest.", 11, 1790260)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the plans to Bruhn")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have taken the plans to Bruhn K'Viir.")

	UpdateQuestDescription(Quest, "I have retrieved the plans and taken them to Bruhn K'Viir.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
