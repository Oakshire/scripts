--[[
	Script Name		:	Quests/EnchantedLands/ThreeMeaningsOfLife.lua
	Script Purpose	:	Handles the quest "The Curious Augur's Three Meanings of Life"
	Script Author	:	Cynnar
	Script Date		:	2015.02.24
	Script Notes	:	<special-instructions>

	Zone			:	Enchanted Lands
	Quest Giver		:	The Curious Augur
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to answer the Curious Augur's riddle correctly", 1, "The Curius Augur is teaching me three meanings of life.", 0, 390082)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I have seven fear feeders and eighteen shoal serpents.", "QuestChat_0_4")
	AddConversationOption(conversation, "I have fifteen fear feeders and ten shoal serpents.", "QuestChat_0_2")
	AddConversationOption(conversation, "I have five fear feeders and twenty shoal serpents.", "QuestChat_0_2")
	AddConversationOption(conversation, "I have no idea.", "QuestChat_0_2")
	StartConversation(conversation, QuestGiver, Player, "There are many meanings to life and I can teach you only three.  The first meaning is that of the nimble mind.  Curiosity is a start, but you must be able to unravel this mystery to proceed.  You have slain many fear feeders and shoal serpents.  You have collected twenty five heads and fifty six legs.  How many of each have you slain?")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've answered the riddle correctly.")
	AddQuestStepChat(Quest, 2, "I must speak with the Curious Augur to learn the second meaning of life.", 1, "The Curius Augur is teaching me three meanings of life.", 0, 390082)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with the Curious Augur.")
	AddQuestStepKill(Quest, 3, "I need to clear the shore of salt snappers.", 7, 100, "The Curius Augur is teaching me three meanings of life.", 171, 390064)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I removed the salt snapper menace.")
	AddQuestStepChat(Quest, 4, "I must speak with the Curious Augur in the Enchanted Lands to learn the thrid meaning of life.", 1, "The Curius Augur is teaching me three meanings of life.", 0, 390082)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Curious Augur.")
	AddQuestStepChat(Quest, 5, "I should seek out Sarma Singebellows.", 1, "The Curius Augur is teaching me three meanings of life.", 0, 390181)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've encountered Sarma Singebellows.")
	AddQuestStepChat(Quest, 6, "I must return to the Curious Augur in the Enchanted Lands.", 1, "The Curius Augur is teaching me three meanings of life.", 0, 390082)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
