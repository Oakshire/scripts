--[[
	Script Name		:	Quests/NektulosForest/trust_must_be_earned_part_2.lua
	Script Purpose	:	Handles the quest, "Trust Must Be Earned, Part 2"
	Script Author	:	premierio015
	Script Date		:	20.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Nektulos Forest
	Quest Giver		:	 Bruhn K'Viir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the Nerius Commander", 1, 100, "I need to kill the Nerius Commander and Tactician in Nektulos Forest.", 11, 1790272)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Go quickly, before they begin to move.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Nerius Commander")

	AddQuestStepKill(Quest, 2, "I need to kill the Nerius Tactician", 1, 100, "I need to kill the Nerius Commander and Tactician in Nektulos Forest.", 11, 1790354)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed the Nerius Tactician")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the Nerius Commander and Tactician.")

	AddQuestStepChat(Quest, 3, "I must speak with Bruhn K'Viir", 1, "I need to return to Bruhn to let him know I've killed the Nerius Tactician and Commander.", 11, 1790260)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Bruhn")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Bruhn.")

	UpdateQuestDescription(Quest, "I have killed the Nerius Commander and Tactician for Bruhn K'Viir.")
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

