--[[
	Script Name		:	Quests/Commonlands/CantWeAllJustGetAlong.lua
	Script Purpose	:	Handles the quest, "Can't We All Just Get Along?"
	Script Author	:	premierio015
	Script Date		:	21.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ferink
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to Jaharin in the kerran camp", 1, "I need to speak to Amoora's father, Jaharin.", 11, 330062)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Thanks you, thanks you!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Jaharin in the kerran camp.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Amoora's father Jaharin.")

	AddQuestStepChat(Quest, 2, "I need to speak to Riki in the ratonga camp", 1, "I should speak to Riki, Ferink's mother, in the ratonga camp across the river from the kerra camp.", 11, 330045)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to Riki in the ratonga camp.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Riki in the ratonga camp.")

	AddQuestStepChat(Quest, 3, "I should return to Ferink", 1, "I have spoken to both Jaharin and Riki and I should return to Ferink.", 11, 330046)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have returned and given Ferink the bad news.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have returned to Ferink after speaking with Jaharin and Riki.")

	UpdateQuestDescription(Quest, "I spoke to both Jaharin and Riki and returned to Ferink.")
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
