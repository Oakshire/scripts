--[[
	Script Name		:	RequestingFurtherOrders.lua
	Script Purpose	:	Handles the quest, "Requesting Further Orders"
	Script Author	:	jakejp
	Script Date		:	10/4/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Argosian
	Preceded by		:	Prophet and Loss
	Followed by		:	Stepping Up the Offensive
--]]

-- NPC ID'S --
local CaptainArellius = 1270000

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Return to Captain Arellius", 1, "I have been ordered to return to Captain Arellius in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, CaptainArellius)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Captain Arellius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I returned to the captain for further orders.")

	UpdateQuestDescription(Quest, "I followed the orders of Lieutenant Argosian, who told me to report back to Captain Arellius at the docks in the Ruins. I will now see if I can be of further assistance in the defense of Freeport.")
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

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027b.mp3", "", "", 3190269915, 3618413640, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Travel safely, citizen of Freeport.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end