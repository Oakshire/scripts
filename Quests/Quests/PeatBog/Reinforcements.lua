--[[
	Script Name		:	Reinforcements.lua
	Script Purpose	:	Handles the quest, "Reinforcements"
	Script Author	:	Shatou
	Script Date		:	1/8/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Lieutenant Dawson
	Preceded by		:	A Final Foe
	Followed by		:	A Lack of Information (in the Caves)
--]]

local CONSUL_BREE_ID = 1970004

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must report to Consul Bree in The Caves.", 1, "I must report to Consul Bree in The Caves to help in the defense of Qeynos.", 11, CONSUL_BREE_ID)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Consul Bree.")

	UpdateQuestDescription(Quest, "I have spoken with Consul Bree.")
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