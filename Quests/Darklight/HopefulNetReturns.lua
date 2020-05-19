--[[
	Script Name		:	Quests/Darklight/HopefulNetReturns.lua
	Script Purpose	:	Handles the quest, "Hopeful Net Returns"
	Script Author	:	FeaRFx
	Script Date		:	13/06/2016
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Aunthrae
	Preceded by		:	What's in Demand? (WhatsinDemand.lua)
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Give the fishing net to Dirzdia T'Zauvirr", 1, "Deliver the fishing net to Dirzdia T'Zauvirr at the southern bridge spanning over the Searing Tendril River.", 0, 340096)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	GiveFishingNet(Quest, QuestGiver, Player)
end

function GiveFishingNet(Quest, QuestGiver, Player)
	SummonItem(Player, 7296, 1)
end

function QuestComplete(Quest, QuestGiver, Player)
	RemoveItem(Player, 7296)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I gave the fishing net to Dirzdia T'Zauvirr")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Dirzdia T'Zauvirr and delivered the net given to me by Aunthrae.")

	UpdateQuestDescription(Quest, "I found Dirzdia T'Zauvirr at the southern bridge over the Lower Tendril River.")
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
