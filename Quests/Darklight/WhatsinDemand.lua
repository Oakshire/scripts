--[[
	Script Name		:	Quests/Darklight/WhatsinDemand.lua
	Script Purpose	:	Handles the quest, "What's in Demand?"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Ilmtar D'Viervs
	Preceded by		:	None
	Followed by		:	One Man's Waste...
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect bone fragments from the undead around T'Vatar Post.", 6, 100, "Ilmtar D'Viervs wants me to collect bone fragments from the undead around T'Vatar Post.", 322, 340085, 340084)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the bone fragments.")

	AddQuestStepChat(Quest, 2, "I need to bring these bone fragments to Ilmtar.", 1, "Ilmtar D'Viervs wants me to collect bone fragments from the undead around T'Vatar Post.", 322, 340076)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have given Ilmtar the bone fragments he requested.")
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
	FaceTarget(QuestGiver, Player)
	local con = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	StartConversation(con, QuestGiver, Player, "Then I await your return.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end