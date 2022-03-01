--[[
	Script Name		:	Quests/Commonlands/MushroomMadness.lua
	Script Purpose	:	Handles the quest, "Mushroom Madness"
	Script Author	:	premierio015
	Script Date		:	16.05.2021
	Script Notes	:	!!! NEED TO ADD MORE LOCATIONS TO MUSHROOMS ("nekf_mushroom_a_young(1790461") IN NEKTULOUS FOREST, AND RANDOMISE THEM. !!!

	Zone			:	Commonlands
	Quest Giver		:	Mooshga
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to collect twelve dark forest caps", 12, 100, "I need to collect dark forest caps.", 821)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the dark forest caps.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected many dark forest caps.")

	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I have Mooshga's caps.", 11, 331133)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Mooshga.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Mooshga.")

	UpdateQuestDescription(Quest, "I collected twelve dark forest caps for Mooshga.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
