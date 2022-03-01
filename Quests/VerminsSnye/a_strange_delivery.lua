--[[
	Script Name		:       Quests/VerminsSnye/a_strange_delivery.lua
	Script Purpose   	:	Handles the quest, "A Strange Delivery"
	Script Author	        :	premierio015
	Script Date		:	16.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay twelve ravenous cubes in Vermin's Snye.", 12, 100, "Someone has infested Vermin's Snye with ravenous cubes, so I have decided to eradicate them.", 168, 1540012, 2000005)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the ravenous cubes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the ravenous cubes.  Who would send such things here?")

	UpdateQuestDescription(Quest, "I have eradicated many of the ravenous cubes in Vermin's Snye.  Who would send such creatures here?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

