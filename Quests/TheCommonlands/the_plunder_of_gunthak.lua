--[[
	Script Name		:	Quests/TheCommonlands/the_plunder_of_gunthak.lua
	Script Purpose	:	Handles the quest, "The Plunder of Gunthak"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	widget_waterlogged_barrel 
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy twenty pirates of Gunthak", 20, 100, "The pirates of Gunthak must have stores of booty just waiting for anyone to come take.", 611, 330155)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain twenty pirates of Gunthak in the Commonlands.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the pirates, that should teach them a lesson!")

	UpdateQuestDescription(Quest, "I have found the pirates. From their corpses, I treated myself to some of their booty.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

