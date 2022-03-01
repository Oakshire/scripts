--[[
	Script Name		:	Quests/VerminsSnye/TheBloodsaberRaid.lua
	Script Purpose	        :	Handles the quest, "The Bloodsaber Raid"
	Script Author	        :	premierio015
	Script Date		:	07.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay fifteen Bloodsaber proficients in Vermin's Snye.", 15, 100, "The Bloodsaber proficients in Vermin's Snye are planning on being part of an attack on the Irontoe estate in Qeynos.  I will stop them and ruin their plans.", 611, 2000019)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the Bloodsaber proficients.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain a bunch of the Bloodsaber proficients, effectively ruining their plans.")

	UpdateQuestDescription(Quest, "I have slain the Bloodsaber proficients and put a stop to the plan to attack the Irontoe estate.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
