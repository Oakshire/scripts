--[[
	Script Name		:	the_nyghtfallow_heirloom.lua
	Script Purpose	:	Handles the quest, "The Nyghtfallow Heirloom"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Tsuul Nyghtfallow
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill Dervish hooligans until I find the pendant.", 5, 100, "I should kill Dervish hooligans in The Sprawl until I find Nyghtfallow's Pendant.", 1244, 1260011)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Dervish hooligans and found the pendant.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed some dervishes.")

    AddQuestStepChat(Quest, 2, "I should return to Tsuul.", 1, "I should return to Tsuul in the Beggar's Court.", 11, 1370025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I found and killed the dervish that held Tsuul Nyghtfallow's family pendant.  The item given in return is nice enough. ")
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
