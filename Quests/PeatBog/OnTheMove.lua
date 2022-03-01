--[[
	Script Name		:	OntheMove.lua
	Script Purpose	:	Handles the quest, "On the Move"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Lieutenant Dawson
	Preceded by		:	Ambushed
	Followed by		:	A Final Foe
--]]

local LIEUTENANT_DAWSON_ID = 1980012
local ENTITY_COMMAND_INSPECT = 61
local ON_THE_MOVE_QUEST_ID = 510

function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to destroy the first machine.", 1, 100, "I need to kill the gnolls that are attempting to bring the three machines out of the Peat Bog.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	
	AddQuestStepSpell(Quest, 2, "I need to destroy the second machine.", 1, 100, "I need to kill the gnolls that are attempting to bring the three machines out of the Peat Bog.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	
	AddQuestStepSpell(Quest, 3, "I need to destroy the third machine.", 1, 100, "I need to kill the gnolls that are attempting to bring the three machines out of the Peat Bog.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, ON_THE_MOVE_QUEST_ID, 1) and QuestStepIsComplete(Player, ON_THE_MOVE_QUEST_ID, 2) and QuestStepIsComplete(Player, ON_THE_MOVE_QUEST_ID, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the gnolls moving the machines.")

		AddQuestStepChat(Quest, 4, "I need to return to Lieutenant Dawson.", 1, "Now that the gnolls guarding the machines have been killed I should return to Lieutenant Dawson.", 11, LIEUTENANT_DAWSON_ID)
		AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The first machine has been destroyed.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The second machine has been destroyed.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The third machine has been destroyed.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Lieutenant Dawson.")

	UpdateQuestDescription(Quest, "I have killed the gnolls that were trying to get the machines out of the Peat Bog.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end