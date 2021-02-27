--[[
	Script Name		:	Quests/Commonlands/BloodskullOrcBounty.lua
	Script Purpose	:	Handles the quest, "Bloodskull Orc Bounty"
	Script Author	:	premierio015
	Script Date		:	27.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Borderland Bounty for Bloodskull warriors(4523)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect twenty Bloodskull earrings.", 20, 100, "I must slay twenty Bloodskull warriors and gain their ornate earrings.", 585, 330250, 330123)
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
	UpdateQuestStepDescription(Quest, 1, "I have collected twenty Bloodskull earrings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain twenty Bloodskull orcs and taken their special earrings.")

	AddQuestStepChat(Quest, 2, "I must visit Captain Vrondell at the Freeport Militia House. ", 1, "I must visit Captain Vrondell at the Freeport Militia House.", 10, 5590132)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Captain Vrondell in the Militia House.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I turned in my bag of ten Bloodskull warrior earrings and was rewarded.")

	UpdateQuestDescription(Quest, "I found a bounty issued by the Freeport Militia calling for able citizens to aid in the resistance against the orcish threat.  I acquired ten Bloodskull earrings, quite blood stained, and brought them to Captain Vrondell.  I was awarded for my contribution to the cause.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
