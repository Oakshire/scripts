

--[[
	Script Name		:	Quests/Commonlands/AHardMantoPlease.lua
	Script Purpose	:	Handles the quest, "A Hard Man to Please"
	Script Author	:	premierio015
	Script Date		:	21.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ferink
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to help Ferink protect Amoora", 4, 100, "I need to help Ferink defend Amoora and her family from the orc onslaught. I must get across the river quickly.", 11, 330250, 330123)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, let's go.")
	StartConversation(conversation, QuestGiver, Player, "The orcses are coming now. Quickly now, cross the river to her huts! We must stop the orcs from hurting my Amoora! I'll meets you there!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defended Amoora and her family from the orc attack.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have defended Amoora and her family from the orc attack.")

	AddQuestStepChat(Quest, 2, "I should talk to Jaharin", 1, "I have defended Amoora and her family from the orc attack. I should go talk to Jaharin again.", 11, 330062)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I received Jaharin's blessing for Ferink.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke to Jaharin again. I should tell Ferink the good news.")

	AddQuestStepChat(Quest, 3, "I need to speak to Ferink", 1, "I should go let Ferink know the good news.", 11, 330046)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken to Ferink.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have returned to Ferink and let him know the good news.")

	UpdateQuestDescription(Quest, "I have defended Amoora and her family from the orc attack.")
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


