--[[
	Script Name		:	Quests/TheCommonlands/an_engraved_stump.lua
	Script Purpose	:	Handles the quest, "An Engraved Stump"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Stump(stump_widget)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay kerran rogues", 12, 100, "I am going to break that record of rogue slaying marked on the tree stump.  I need to slay thirty kerran rogues in the Commonlands.", 611, 330057)
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
	UpdateQuestStepDescription(Quest, 1, "I killed the rogues, showing no mercy.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the kerran rogues.")

	UpdateQuestDescription(Quest, "Hah!  I have slain twelve kerran rogues, who can top that?!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

