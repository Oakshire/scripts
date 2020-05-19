--[[
	Script Name		:	ReclaimingtheBog.lua
	Script Purpose	:	Handles the quest, "Reclaiming the Bog"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Lieutenant Dawson
	Preceded by		:	None
	Followed by		:	Mysterious Machine
--]]

local LIEUTENANT_DAWSON_ID = 1980012
local A_SPOREAL_SEEDLING_ID = 1980011
local A_SPOREAL_HERBALIST_ID = 1980027
local A_SPOREAL_GUARD_ID = 1980031
local A_SPOREAL_KNIGHT_ID = 1980033
local A_RAVENOUS_BOG_SLUG_ID = 1980051

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill six fungus men.", 6, 100, "Lieutenant Dawson has asked that I kill some ravenous bog slugs and fungus men for her.", 611, A_SPOREAL_SEEDLING_ID, A_SPOREAL_HERBALIST_ID, A_SPOREAL_GUARD_ID, A_SPOREAL_KNIGHT_ID)
	
	AddQuestStepKill(Quest, 2, "I need to kill four ravenous bog slugs.", 4, 100, "Lieutenant Dawson has asked that I kill some ravenous bog slugs and fungus men for her.", 611, A_RAVENOUS_BOG_SLUG_ID)
	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 507, 1) and QuestStepIsComplete(Player, 507, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the ravenous bog slugs and the fungus men.")
		
		AddQuestStepChat(Quest, 3, "I need to return to Lieutenant Dawson near the gates to Nettleville.", 1, "I need to return to Lieutenant Dawson now that I have completed her task.", 11, LIEUTENANT_DAWSON_ID)
		AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain six fungus men.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed four ravenous bog slugs.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Lieutenant Dawson.")

	UpdateQuestDescription(Quest, "I have completed the small task for Lieutenant Dawson.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end