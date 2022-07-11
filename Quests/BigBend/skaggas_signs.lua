--[[
	Script Name		:	skaggas_signs.lua
	Script Purpose	:	Handles the quest, "Skagga's Signs"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Skagga
	Preceded by		:	none
	Followed by		:	Skin for Skagga
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with the Scribe in Big Bend.", 1, "I should check inside these houses to see if I can find the Scribe.", 11, 1340052)
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken with the Scribe")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the scribe and he's made me some signs.")

	UpdateQuestDescription(Quest, "Skagga liked her signs, and offered me some coin for my time.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


