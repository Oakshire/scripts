--[[
	Script Name		:	BogSludgeHunt.lua
	Script Purpose	:	Handles the quest, "Bog Sludge Hunt"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Peat Bog
	Quest Giver		:	Knight-Captain Santis
	Preceded by		:	None
	Followed by		:	None
--]]

local BOG_SLUDGE_ID = 1980002
local KNIGHT_CAPTAIN_SANTIS_ID = 1980028

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill several bog sludges", 10, 100, "I need to kill Bog Sludges in the Peat Bog.", 346, BOG_SLUDGE_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the bog sludges.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain several Bog Sludges in the Peat Bog.")

	AddQuestStepChat(Quest, 2, "I need to return to Captain Santis.", 1, "I should return to Captain Santis for my reward.", 11, KNIGHT_CAPTAIN_SANTIS_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Captain Santis.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I received my reward for defeating the Bog Sludges.")

	UpdateQuestDescription(Quest, "I was able to make the Peat Bog a little safer for others by getting rid of several Bog Sludges.  I also made a little coin on the side thanks to the payment from Captain Santis.")
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