--[[
	Script Name		:	Quests/TheDownBelow/a_crumpled_note_priest.lua
	Script Purpose	:	Handles the quest, "A Crumpled Note"
	Script Author	:	Dorbin
	Script Date		:	1.5.2022
	Script Notes	: Recovered from SOEQuest Logs & Manually.

	Zone			:	Down Below
	Quest Giver		:	a crumped scroll(Item)
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	 AddQuestStepChat(Quest, 1, "I need to find a priest at the Temple of Life interested in the note.", 1, "I need to take this note to a priest at the Temple of Life.", 185, 2220164)
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
	UpdateQuestStepDescription(Quest, 1, "I've found a priest at the Temple of Life interested in the note.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I brought the note to the Temple of Life and found a priest interested in it.")

	UpdateQuestDescription(Quest, "I gave the note to Ian Turner at the Temple of Life.  He seemed less impressed with the find.  He was quite happy that I brought it to his attention. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

