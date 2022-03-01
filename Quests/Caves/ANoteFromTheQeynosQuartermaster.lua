--[[
	Script Name		:	ANotefromtheQeynosQuartermaster.lua
	Script Purpose	:	Handles the quest, "A Note from the Qeynos Quartermaster"
	Script Author	:	Shatou
	Script Date		:	1/5/2020
	Script Notes	:	

	Zone			:	Caves/Antonica
	Quest Giver		:	A Note from the Qeynos Quartermaster(examine item)
	Preceded by		:	High Shaman of the Rockpaw
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Matsy Rollingpin in Antonica.", 1, "I am to speak with Matsy Rollingpin in Antonica. She can be found upstairs at Sayer's Outfitters.", 374)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Matsy.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Matsy Rollingpin in Antonica.")

	UpdateQuestDescription(Quest, "I have spoken with Matsy.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end