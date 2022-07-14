--[[
	Script Name		:	muzmogs_rat_smashing_fun.lua
	Script Purpose	:	Handles the quest, "Muzmog's Rat Smashing Fun"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Muzmog
	Preceded by		:	None
	Followed by		:	Funny Rat Smashing
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay rats.", 10, 100, "I should kill rats to make Muzmog happy. There are rats everywhere throughout the city of Freeport and the Thieves Way.", 99, 1540004, 1250014, 1250016, 1250035, 1540031)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The rats have been slain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the rats like Muzmog suggested.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Muzmog.", 1, "I need to return to Muzmog.", 11, 1340020)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end 

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've told Muzmog about what I did to the rats. He liked it so much that he told me I can drink with him any time.")
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

