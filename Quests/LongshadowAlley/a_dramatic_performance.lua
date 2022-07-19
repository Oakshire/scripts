--[[
	Script Name		:	a_dramatic_performance.lua
	Script Purpose	:	Handles the quest, "A Dramatic Performance"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Maliz T`Raan
	Preceded by		:	Taking it Out on the Raiders
	Followed by		:	A Shady Clearing
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Talk to Pavo Nightfire in Beggar's Court.", 1, "Talk to Pavo Nightfire in Beggar's Court, in front of a building to the east of the inn.", 11, 1370048)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I delivered the message to Pavo Nightfire.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the message to Pavo Nightfire in Beggar's Court.")
    
    AddQuestStepChat(Quest, 2, "I should return to Maliz T`Raan.", 1, "I should return to Maliz T`Raan in Longshadow Alley.", 11, 1380030)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have returned and Maliz has entrusted me with the next task.")
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


