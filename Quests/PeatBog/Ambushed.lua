--[[
	Script Name		:	Ambushed.lua
	Script Purpose	:	Handles the quest, "Ambushed"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Lieutenant Dawson
	Preceded by		:	Mysterious Machine
	Followed by		:	On The Move
--]]

local LIEUTENANT_DAWSON_ID = 1980012
local ENTITY_COMMAND_INSPECT = 61
local AMBUSHED_QUEST_ID = 509

function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to investigate the ambush site west of Two Logs Pond, which is south of the sewer grate.", 1, 100, "Lieutenant Dawson has asked me to investigate three ambush sites.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	
	AddQuestStepSpell(Quest, 2, "I need to investigate the ambush site in the north eastern corner of the area east of Two Logs Pond.", 1, 100, "Lieutenant Dawson has asked me to investigate three ambush sites.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	
	AddQuestStepSpell(Quest, 3, "I need to investigate the ambush site in the south end of the area east of Two Logs Pond.", 1, 100, "Lieutenant Dawson has asked me to investigate three ambush sites.", 11, ENTITY_COMMAND_INSPECT)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, AMBUSHED_QUEST_ID, 1) and QuestStepIsComplete(Player, AMBUSHED_QUEST_ID, 2) and QuestStepIsComplete(Player, AMBUSHED_QUEST_ID, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have investigated all three ambush sites.")
		
		AddQuestStepChat(Quest, 4, "I need to return to Lieutenant Dawson.", 1, "I need to tell Lieutenant Dawson of what I found at one of the ambush sites.", 11, ENTITY_COMMAND_INSPECT)
		AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have investigated the ambush site near Two Logs Pond.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have investigated the ambush site in the area east of Two Logs Pond.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have investigated the ambush site in the southern end of the area east of Two Logs Pond.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Lieutenant Dawson.")

	UpdateQuestDescription(Quest, "I found evidence of gnolls at one of the ambush sites.")
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