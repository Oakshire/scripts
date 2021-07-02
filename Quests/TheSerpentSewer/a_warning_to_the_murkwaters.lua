--[[
	Script Name		:	Quests/TheSerpentSewer/a_warning_to_the_murkwaters.lua
	Script Purpose	:	Handles the quest, "A Warning to the Murkwaters"
	Script Author	:	premierio015
	Script Date		:	01.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	warning message (Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Kill six Murkwaters.", 6, 100, "This note was apparently meant for someone else.", 611, 1550008, 1550009, 1550045, 1550046, 1560083, 1560029, 1560012, 1560004, 1560060, 1560067, 1550048, 1550011, 1540037, 1590003, 1560027, 1560081, 1550047, 1550010, 1590002, 4750000, 1560013, 1560068, 1560005, 1560061, 4750001, 1560030, 1550062)
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
	UpdateQuestStepDescription(Quest, 1, "I've slain the Murkwaters")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've carried out the tasks stated in the note.")

	UpdateQuestDescription(Quest, "Interesting... I guess it was worth it for the experience.  I suppose it couldn't hurt to take on adventures such as these.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

