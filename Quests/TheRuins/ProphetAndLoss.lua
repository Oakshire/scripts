--[[
	Script Name		:	ProphetandLoss.lua
	Script Purpose	:	Handles the quest, "Prophet and Loss"
	Script Author	:	jakejp
	Script Date		:	10/4/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Argosian
	Preceded by		:	Pounding the Enemy
	Followed by		:	Requesting Further Orders
--]]

-- QUEST ID'S --
local ProphetandLoss = 371

-- LOCATION ID'S --

-- MOB ID'S --
local BrokentuskWarrior = 1270013
local BrokentuskProphet = 1270009

-- NPC ID'S --
local LieutenantArgosian = 1270019

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Find an old shrine guarded by Brokentusk orcs", 10, "I should search for an old shrine in the Ruins guarded by prophets past the Brokentusks north of the docks. Then I should eliminate the orcs guarding it.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 1215, -69, 0, 68)
	AddQuestStepKill(Quest, 2, "Defeat Brokentusk warriors", 4, 100, "I should search for an old shrine in the Ruins guarded by prophets past the Brokentusks north of the docks. Then I should eliminate the orcs guarding it.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, BrokentuskWarrior)
	AddQuestStepKill(Quest, 3, "Defeat Brokentusk prophets", 4, 100, "I should search for an old shrine in the Ruins guarded by prophets past the Brokentusks north of the docks. Then I should eliminate the orcs guarding it.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, BrokentuskProphet)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, ProphetandLoss, 1) and QuestStepIsComplete(Player, ProphetandLoss, 2) and QuestStepIsComplete(Player, ProphetandLoss, 3) then
		ReturnToArgosian(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the old shrine, which seems to be a relic of Shoreside.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated four Brokentusk warriors guarding the old shrine.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have defeated four Brokentusk prophets, but they don't seem to gain any strength from this shrine.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the shrine and defeated the orcs guarding it.")
	CheckProgress(Quest, QuestGiver, Player)

end

function ReturnToArgosian(Quest, QuestGiver, Player)
	AddQuestStepChat(Quest, 4, "Report to Lieutenant Argosian", 1, "I should report back to Lieutenant Argosian in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantArgosian)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have informed the lieutenant that I found the shrine.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to the lieutenant.")

	UpdateQuestDescription(Quest, "I found the remains of an old shrine in the Ruins, but it does not seem to be giving any divine strength to the orcs. In fact, it seems to be a remnant of the lost community of Shoreside, which is what this area used to be called. I have reported back to Lieutenant Argosian of the Freeport Militia and told him what I found.")
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
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022b.mp3", "", "", 3696168160, 1150705872, Player)
	AddConversationOption(conversation, "Yes, sir.", "dlg_0_8")
	StartConversation(conversation, QuestGiver, Player, "Go now, and report back when your duty is done.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end