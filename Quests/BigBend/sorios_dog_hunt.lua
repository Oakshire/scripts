--[[
	Script Name		:	sorios_dog_hunt.lua
	Script Purpose	:	Handles the quest, "Sorio's Dog Hunt"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Captain Sorio
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten wild dogs in the Sprawl.", 10, 100, "I need to kill ten Wild Dogs to prevent them from breeding any further.", 611, 1260005)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed the wild dogs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the wild dogs as Sorio had asked.")

	UpdateQuestDescription(Quest, "Sorio paid me for killing the wild dogs. I'm pretty sure he insulted me at the same time he thanked me. He'll pay one day.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


