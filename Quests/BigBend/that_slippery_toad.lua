--[[
	Script Name		:	that_slippery_toad.lua
	Script Purpose	:	Handles the quest, "That Slippery Toad"
	Script Author	:	torsten
	Script Date		:	14.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Graktak Splatterblood
	Preceded by		:	Swamp Water Stew
	Followed by		:	ecret of the Troll
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find the froglok in Big Bend, and retrieve Graktak's sword for him.", 1, 100, "I need to find the froglok in Big Bend, and retrieve Graktak's sword for him.", 1682, 1340027)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I was able to find the froglok and get back Graktak's sword.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to find the froglok and get back Graktak's sword.")

	AddQuestStepChat(Quest, 2, "I should return to Graktak.", 1, "I should return to Graktak to give him the sword.", 1682, 1340042)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to find and squish the froglok just as Graktak asked. Graktak was very happy when I returned his sword, but seemed more excited that he may get to eat more frog meat.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
