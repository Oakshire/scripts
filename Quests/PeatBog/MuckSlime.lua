--[[
	Script Name		:	MuckSlime.lua
	Script Purpose	:	Handles the quest, "Muck Slime"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Ferius Mentus
	Preceded by		:	None
	Followed by		:	None
--]]

local FERIUS_MENTUS_ID = 1980005
local A_MUCK_TOAD_ID = 1980015

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect some muck toad sludge.", 10, 100, "Ferius would like me to collect some muck toad sludge.", 343, A_MUCK_TOAD_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some muck toad sludge.")

	AddQuestStepChat(Quest, 2, "I need to return to Ferius.", 1, "Ferius would like me to collect some muck toad sludge.", 355, FERIUS_MENTUS_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Ferius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the muck toad sludge.")

	UpdateQuestDescription(Quest, "I have given Ferius his frogs. He was very pleased.")
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