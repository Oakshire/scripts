--[[
	Script Name		:	Quests/Commonlands/BanditSashBounty.lua
	Script Purpose	:	Handles the quest, "Bandit Sash Bounty"
	Script Author	:	premierio015
	Script Date		:	24.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Borderland Bounty for Dervish Cutthroats(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay twenty Dervish cutthroats and collect their sashes.", 20, 100, "I must kill twenty Dervish cutthroats.", 1231, 330092, 330104)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed twenty Dervish cutthroats and collected their sashes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed twenty Dervish cutthroats.")

	AddQuestStepChat(Quest, 2, "I must speak with Captain Vrondell at the Freeport Militia House.", 1, "I must speak with Captain Vrondell at the Freeport Militia House.", 10, 5590132)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Captain Vrondell.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Captain Vrondell.")

	UpdateQuestDescription(Quest, "I acquired the sashes and brought them to Captain Vrondell of the Freeport Militia.  The Captain awarded me the bounty.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
