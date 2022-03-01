--[[
	Script Name		:	AFinalFoe.lua
	Script Purpose	:	Handles the quest, "A Final Foe"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Lieutenant Dawson
	Preceded by		:	On the Move
	Followed by		:	Reinforcements
--]]

local LIEUTENANT_DAWSON_ID = 1980012
local DENTFANG_ID = 1980070

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Dentfang.", 1, 100, "I need to kill Dentfang for Lieutenant Dawson.", 11, DENTFANG_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed Dentfang.")

	AddQuestStepChat(Quest, 2, "I need to return to Dawson.", 1, "I need to kill Dentfang for Lieutenant Dawson.", 11, LIEUTENANT_DAWSON_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed Dentfang.")

	UpdateQuestDescription(Quest, "I have slain Dentfang. Lieutenant Dawson was very pleased with my work.")
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