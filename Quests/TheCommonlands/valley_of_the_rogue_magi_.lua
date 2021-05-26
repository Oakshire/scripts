--[[
	Script Name		:	valley_of_the_rogue_magi.lua
	Script Purpose	:	Handles the quest, "Valley of the Rogue Magi"
	Script Author	:	premierio015
	Script Date		:	26.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands, Valley of the Rogue Magi
	Quest Giver		:	Potion of Earthwalking
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "I need to enter the Valley of the Rogue Magi through the rockpile in The Commonlands.", 1, 100, "Having consumed this potion, I need to enter the Valley of the Rogue Magi through the rockpile in The Commonlands.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    if HasItem(Player, 10564) then
	RemoveItem(Player, 10564)
	end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have entered the Valley of the Rogue Magi")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have discovered the secrets of the Valley of the Rogue Magi.")

	UpdateQuestDescription(Quest, "I have discovered the secrets of the Valley of the Rogue Magi.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

