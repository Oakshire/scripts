--[[
	Script Name		:	Quests/TheSerpentSewer/sticky_situation.lua
	Script Purpose	:	Handles the quest, "Sticky Situation"
	Script Author	:	premierio015
	Script Date		:	02.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	sewer memorandum (Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Slay four drudge globules.", 4, 100, "This note was apparently meant for someone else.", 611, 1550001, 1550038)
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
	UpdateQuestStepDescription(Quest, 1, "I've slain the globules.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've carried out the tasks stated in the note.")
    if HasItem(Player, 12108) then
    RemoveItem(Player, 12108)
    end
	UpdateQuestDescription(Quest, "Interesting... I guess it was worth it for the experience.  I suppose it couldn't hurt to take on adventures such as these.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
