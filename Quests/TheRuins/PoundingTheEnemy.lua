--[[
	Script Name		:	PoundingtheEnemy.lua
	Script Purpose	:	Handles the quest, "Pounding the Enemy"
	Script Author	:	jakejp
	Script Date		:	10/4/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Argosian
	Preceded by		:	Pawns in the Game
	Followed by		:	Prophet and Loss
--]]

-- QUEST ID'S --
local PoundingTheEnemy = 370

-- MOB ID'S --
local BrokentuskGuard = 1270014
local BrokentuskWarrior = 1270013
local BrokentuskOverseer = 1270006

-- NPC ID's -- 
local LieutenantArgosian = 1270019

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Defeat Brokentusk guards", 5, 100, "I have been ordered to defeat the Brokentusk orcs in the Ruins and defend the vagrant squatters.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, BrokentuskGuard)
	AddQuestStepKill(Quest, 2, "Defeat Brokentusk warriors", 5, 100, "I have been ordered to defeat the Brokentusk orcs in the Ruins and defend the vagrant squatters.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, BrokentuskWarrior)
        AddQuestStepKill(Quest, 3, "Slay the overseer", 1, 100, "I have been ordered to defeat the Brokentusk orcs in the Ruins and defend the vagrant squatters.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, BrokentuskOverseer)
        AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, PoundingTheEnemy, 1) and QuestStepIsComplete(Player, PoundingTheEnemy, 2) and QuestStepIsComplete(Player, PoundingTheEnemy, 3) then
		Step4Complete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated five Brokentusk guards.")
	CheckProgress(Quest, QuestGiver, Player)
	
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated five Brokentusk warriors.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain the orc overseer.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
        UpdateQuestTaskGroupDescription(Quest, 1, "I have defeated the orcs, keeping the vagrants safe for now.")

	AddQuestStepChat(Quest, 4, "Report to Lieutenant Argosian", 1, "I should return to Lieutenant Argosian in the Ruins and report that the vagrants are safe for now.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantArgosian)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have reported back to Lieutenant Argosian.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Lieutenant Argosian.")

	UpdateQuestDescription(Quest, "I defeated a variety of Brokentusk orcs and kept the squatters safe in the Ruins. The threat is far from over, however.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	--[[ if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
	--]]
	if QuestStepIsComplete(Player, PoundingTheEnemy, 1) then
		Step1Complete(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, PoundingTheEnemy, 2) then
		Step2Complete(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, PoundingTheEnemy, 3) then
		Step3Complete(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, PoundingTheEnemy, 4) then
		Step4Complete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015b.mp3", "", "", 102436079, 1387861460, Player)
	AddConversationOption(conversation, "I will.", "dlg_10_5")
	StartConversation(conversation, QuestGiver, Player, "I knew I could count on you. Return to me when the orcs have paid for their crimes.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end