--[[
	Script Name		:	AlabasterfortheMages.lua
	Script Purpose	:	Handles the quest, "Alabaster for the Mages"
	Script Author	:	Shatou
	Script Date		:	1/6/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	a chunk of alabaster(examine item)
	Preceded by		:	None
	Followed by		:	None
--]]

local AN_ALABASTER_GOLEM_ID_1 = 1970030
local AN_ALABASTER_GOLEM_ID_2 = 1970022
local ELSPETH_ASTLEY_ID = 2310087

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather chunks of alabaster", 5, 66, "I need to gather up five more blocks of alabaster. Should I need to leave the Caves, I may return via any mariner bell within the City of Qeynos.", 1170, AN_ALABASTER_GOLEM_ID_1, AN_ALABASTER_GOLEM_ID_2)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You have gathered all five chunks of alabaster.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered up all five blocks of alabaster.")

	AddQuestStepChat(Quest, 2, "I need to speak with a mage at the Concordium who is interested in the alabaster", 1, "I need to speak with a mage in the Concordium who will buy the alabaster.", 1170, ELSPETH_ASTLEY_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I sold the alabaster to Elspeth.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Elspeth in the Concordium who bought the alabaster from me.")

	UpdateQuestDescription(Quest, "I found someone at the Concordium who was willing to take the alabaster off of my hands.  Elspeth had need of the alabaster for creating wands.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end