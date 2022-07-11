--[[
	Script Name		:	skin_for_skaaga.lua
	Script Purpose	:	Handles the quest, "Skin for Skagga"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Skagga
	Preceded by		:	Skagga's Signs
	Followed by		:	none
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find a large swath of zombie skin", 1, 10, "I should kill some zombies until I find a skin large enough for Skagga's uses.", 138, 1250011, 1250024, 1250030, 1250008, 1250021)
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
	UpdateQuestStepDescription(Quest, 1, "I have found a large swath of zombie skin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found a large swath of zombie skin.")

	UpdateQuestDescription(Quest, "Skagga doesn't like her signs, but she thinks that zombie skin might help to make them prettier.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end



