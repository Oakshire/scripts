--[[
	Script Name		:	Quests/TheSerpentSewers/zizls_message_in_a_bottle.lua
	Script Purpose	:	Handles the quest, "Zizl's Message in a Bottle"
	Script Author	:	premierio015
	Script Date		:	01.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	widget_wine_bottle(1550063)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay the Murkwater abettors in Serpent Sewer.", 2, 100, "I need to slay the Murkwater abettors in Serpent Sewer to look for signs of Zizl's condition.", 611, 1550008, 1550009, 1550045, 1550046)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the Murkwater abettors.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Murkwater abettors, but there is no sign of Zizl.")

	UpdateQuestDescription(Quest, "I have slain an abettor and found a &quot;Kill & Capture&quot; list on his body; it would appear the Zizl was not so lucky.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


