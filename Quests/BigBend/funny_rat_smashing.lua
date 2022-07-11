--[[
	Script Name		:	funny_rat_smashing.lua
	Script Purpose	:	Handles the quest, "Funny Rat Smashing"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Muzmog
	Preceded by		:	Muzmog's Rat Smashing Fun
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten rats here in Freeport.", 10, 100, "If I kill ten rats, that should make Muzmog like me more.", 99,  1540004, 1250014, 1250016, 1250035, 1540031)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have killed the rats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the rats that Muzmog pointed out.")

	UpdateQuestDescription(Quest, "I've tried to make friends with Muzmog, but it seems he's had a bit too much to drink. I think I'll leave him alone from now on.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


