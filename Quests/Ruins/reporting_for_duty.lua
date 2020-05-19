--[[
	Script Name	: Quests/Ruins/reporting_for_duty.lua
	Script Purpose	: Handles the quest, "Driving Back the Dervish"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: None
	Followed by: Pawns in the Game (pawns_in_the_game.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should seek out Lieutenant Argosian at the first outpost in the Ruins.", 1, "I have been ordered to speak to Lieutenant Argosian.", 0, 1270031)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for the advice.", "dlg_2_14")
	StartConversation(conversation, QuestGiver, Player, "Good. Oh, be sure to pay homage to the statue of our beloved Overlord. It would prove most beneficial for you to bask in the wisdom of his visage.")
end

function Declined(Quest, QuestGiver, Player)
end

function dlg_2_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius018.mp3", "", "", 377300022, 2983031406, Spawn)
	AddConversationOption(conversation, "I'll go see him.")
	StartConversation(conversation, NPC, Spawn, "Lieutenant Argosian at the first outpost will be responsible for your initial training. Do not return to me until he has ordered you to do so.")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to the lieutenant.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reported to Lietenant Argosian.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I followed the orders of Captain Arellius, who had me report to Lieutenant Argosian at the first outpost in the Ruins. I will now be aiding him in his quest to battle the Brokentusk orcs.")
end

function Reload(Quest, QuestGiver, Player)
end