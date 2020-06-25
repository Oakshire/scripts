--[[
	Script Name		:	Quests/ButcherblockMountains/MuckflickMessageIntercepted.lua
	Script Purpose	:	Handles the quest, "Muckflick Message Intercepted!"
	Script Author	:	jakejp
	Script Date		:	6/6/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Brulten Hiltstill
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to retrieve a message from a Muckflick runner.", 1, 100, "I need to take a note from the body of a Muckflick runner.", 75, 1080331, 1080374, 1080430)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have retrieved a message from a Muckflick runner.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a note on the body of the Muckflick runner!")

	AddQuestStepChat(Quest, 2, "I need to give the note to Brulten.", 1, "I need to bring the message to Brulten.", 11, 1081114)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given the note to Brulten.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the message to Brulten.")

	UpdateQuestDescription(Quest, "I have pried a message from the dead hands of a Muckflick runner and delivered it to Brulten Hiltstill.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end