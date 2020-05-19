--[[
	Script Name		:	SteppingUptheOffensive.lua
	Script Purpose	:	Handles the quest, "Stepping Up the Offensive"
	Script Author	:	jakejp
	Script Date		:	10/4/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Captain Arellius
	Preceded by		:	Requesting Further Orders
	Followed by		:	Knock the Fight Out of 'Em
--]]

-- NPC ID'S --
local LieutenantImperidus = 1270031

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Lieutenant Imperidus", 1, "I have been ordered by the captain to report to Lieutenant Imperidus in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantImperidus)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found Lieutenant Imperidus deep in the Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reported to Lieutenant Imperidus.")

	UpdateQuestDescription(Quest, "I made my way through the Ruins and found the second Militia outpost, where I reported to Lieutenant Imperidus for duty.")
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

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius028.mp3", "", "", 11330989, 3299447227, Player)
	AddConversationOption(conversation, "I understand, Captain.")
	StartConversation(conversation, QuestGiver, Player, "Again, keep in mind that even travel to the second outpost will be dangerous. Travel with companions to ensure your safety. Do not report back to me until you have followed the lieutenant's orders.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end