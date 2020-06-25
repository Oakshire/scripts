--[[
	Script Name		:	MysteriousMachine.lua
	Script Purpose	:	Handles the quest, "Mysterious Machine"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Lieutenant Dawson
	Preceded by		:	Reclaiming the Bog
	Followed by		:	Ambushed
--]]

local LIEUTENANT_DAWSON_ID = 1980012
local ENTITY_COMMAND_INSPECT = 61

function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to find the machine in the water in the Peat Bog and attach the arcanic beacon.", 1, 100, "Lieutenant Dawson has asked that I find a machine that is supposedly in the water in the Peat Bog.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have attached the arcanic beacon.")

	AddQuestStepChat(Quest, 2, "I need to return to Lieutenant Dawson.", 1, "Lieutenant Dawson has asked that I find a machine that is supposedly in the water in the Peat Bog.", 11, LIEUTENANT_DAWSON_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the machine that Lieutenant Dawson was told about.")

	UpdateQuestDescription(Quest, "I have found the machine that Lieutenant Dawson heard about. While I was hooking the beacon up I was attacked by a gnoll. After killing the gnoll I was able to attach the beacon.")
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