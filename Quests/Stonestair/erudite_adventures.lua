--[[
	Script Name		:	Quests/Stonestair/erudite_adventures.lua
	Script Purpose	:	Handles the quest, "Erudite Adventures"
	Script Author	:	Jabantiz
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Stonestair Byway
	Quest Giver		:	
	Preceded by		:	abolishing_curiosity.lua
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Custodian Zaddar in the Graveyard.", 1, "Head out to the Graveyard and speak with Custodian Zaddar.", 11, 1250002)
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
	UpdateQuestStepDescription(Quest, 1, "I've spoken to Custodian Zaddar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Custodian Zaddar.")

	UpdateQuestDescription(Quest, "I've spoken with Custodian Zaddar in the Graveyard about tasks he may have.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
