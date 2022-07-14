--[[
	Script Name		:	troll_adventures.lua
	Script Purpose	:	Handles the quest, "Troll Adventures"
	Script Author	:	torsten
	Script Date		:	14.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Braz Gutpounder
	Preceded by		:	Troll Patrol
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Enforcer Kurdek in the Sprawl.", 1, "Head out to the Sprawl and see if you can find Enforcer Kurdek.", 11, 1260017)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Enforcer Kurdek.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found Enforcer Kurdek in the Sprawl.")

	UpdateQuestDescription(Quest, "I've spoken with Enforcer Kurdek in the sprawl.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

