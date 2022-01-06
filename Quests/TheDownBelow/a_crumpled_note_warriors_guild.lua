--[[
	Script Name		:	Quests/TheDownBelow/a_crumpled_note_warriors_guild.lua
	Script Purpose	:	Handles the quest, "A Crumpled Note"(Warrior's Guild Version)
	Script Author	:	premierio015
	Script Date		:	28.10.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Down Below
	Quest Giver		:	a crumpled scroll(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find a fighter at the Steel Warriors guild interested in the note.", 1, "I need to take this note to a fighter at the Steel Warriors guild.", 185, 2210218, 6600321)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 1471) then
	RemoveItem(Player, 1471)
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
	UpdateQuestStepDescription(Quest, 1, "I've found a fighter at the Steel Warriors guild interested in the note.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I brought the note to the Steel Warriors guild and found a fighter interested in it.")

	UpdateQuestDescription(Quest, "I gave the note to Sir Sidan Godard at the Steel Warriors guild hall. He was very interested, and said he would bring it up to his superiors.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


