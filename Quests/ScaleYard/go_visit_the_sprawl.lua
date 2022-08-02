--[[
	Script Name		:	go_visit_the_sprawl.lua
	Script Purpose	:	Handles the quest, "Go Visit The Sprawl"
	Script Author	:	torsten
	Script Date		:	01.08.2022
	Script Notes	:	

	Zone			:	Miscellaneous
	Quest Giver		:	Malachi
	Preceded by		:	Barbarian racial questline
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to Enforcer Kurdek in the Sprawl.", 1, "I can get to the Sprawl by using the bell at the Scale Yard docks, travel to Big Bend and then find the gate to the Sprawl.", 11, 1260017)
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Enforcer Kurdek.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Enforcer Kurdek.")

	UpdateQuestDescription(Quest, "I have spoken with Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
