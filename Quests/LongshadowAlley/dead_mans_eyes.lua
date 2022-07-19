--[[
	Script Name		:	dead_mans_eyes.lua
	Script Purpose	:	Handles the quest, "Dead Man's Eyes"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Divek L`Narr
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect two zombie eyes", 2, 20, "I need to kill zombies, then choose the least rotted pair of eyes. I should be able to find some in the Graveyard.", 83, 1250008, 1250011, 1250018, 1250024, 1250028, 1250030)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected two zombie eyes")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found a pair of zombie eyes from two different zombies.")
    
    AddQuestStepChat(Quest, 2, "I should return to Divek.", 1, "I should return to Divek.", 11, 1380029)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Divek has paid me for the eyes that he claims will be used to look for his brother's soul. I have been warned not to interrupt his ritual. At least I was paid for the job.")
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

