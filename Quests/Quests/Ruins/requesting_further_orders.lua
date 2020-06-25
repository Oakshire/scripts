--[[
	Script Name	: Quests/Ruins/requesting_further_orders.lua
	Script Purpose	: Handles the quest, "Requesting Further Orders"
	Script Author	: Scatman
	Script Date	    : 2009.08.02
	
	Zone       : The Ruins
	Quest Giver: Lieutenant Argosian
	Preceded by: Prophet and Loss (prophet_and_loss.lua)
	Followed by: Stepping up the Offensive (stepping_up_the_offensive.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must return to Captain Arellius to receive further orders.", 1, "I have been ordered to return to Captain Arellius.", 0, 1270003)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian027b.mp3", "", "", 3190269915, 3618413640, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Travel safely, citizen of Freeport.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Captain Arellius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Captain Arellius.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I followed the orders of Lieutenant Argosian, who told me to report back to Captain Arellius at the docks in the Ruins. I will now see if I can be of further assistance in the defense of Freeport.")
end

function Reload(Quest, QuestGiver, Player, Step)
end