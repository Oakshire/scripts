--[[
	Script Name		:	ReportingforDuty.lua
	Script Purpose	:	Handles the quest, "Reporting for Duty"
	Script Author	:	jakejp
	Script Date		:	10/1/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Captain Arellius
	Preceded by		:	None
	Followed by		:	Pawns in the Game
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Seek out Lieutenant Argosian", 1, "I have been ordered to speak to Lieutenant Argosian in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, 1270019)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I spoke to the lieutenant.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reported to Lieutenant Argosian.")

	UpdateQuestDescription(Quest, "I followed the orders of Captain Arellius, who had me report to Lieutenant Argosian at the first outpost in the Ruins. I will now be aiding him in his quest to battle the Brokentusk orcs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius017.mp3", "", "", 3161105606, 1921169647, Player)
	AddConversationOption(conversation, "Thank you for the advice.", "dlg_1_14")
	StartConversation(conversation, QuestGiver, Player, "Good. Oh, be sure to pay homage to the statue of our beloved Overlord. It would prove most beneficial for you to bask in the wisdom of his visage.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end