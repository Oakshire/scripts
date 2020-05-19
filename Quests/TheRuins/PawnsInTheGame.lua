--[[
	Script Name		:	PawnsintheGame.lua
	Script Purpose	:	Handles the quest, "Pawns in the Game"
	Script Author	:	jakejp
	Script Date		:	10/4/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Argosian
	Preceded by		:	Reporting For Duty
	Followed by		:	Pounding the Enemy
--]]

local brokentuskpawn1 = 1270005
local brokentuskpawn2 = 1270017
local LieutenantArgosian = 1270019

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Defeat Brokentusk pawns", 10, 100, "I must aid Freeport by defeating the Brokentusk pawns in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, brokentuskpawn1, brokentuskpawn2)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I defeated 10 Brokentusk pawns and proved my worth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I crushed the Brokentusk pawns as ordered.")

	AddQuestStepChat(Quest, 2, "Report to Lieutenant Argosian", 1, "I should return to Lieutenant Argosian in the Ruins and tell him of my victory.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantArgosian)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have reported back to Lieutenant Argosian.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to the lieutenant.")

	UpdateQuestDescription(Quest, "Following the orders of Lieutenant Argosian, I defeated a number of the Brokentusk pawns. They were relatively easy prey, so I will ask Argosian for a more challenging assignment.")
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
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009b.mp3", "", "", 3351588566, 3135177671, Player)
	AddConversationOption(conversation, "I will do so.", "dlg_4_9")
	StartConversation(conversation, QuestGiver, Player, "Get to work, citizen. You have your orders, now carry them out.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end