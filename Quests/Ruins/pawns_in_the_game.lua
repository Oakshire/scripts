--[[
	Script Name	: Quests/Ruins/pawns_in_the_game.lua
	Script Purpose	: Handles the quest, "Pawns in the Game"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: Reporting for Duty (reporting_for_duty.lua)
	Followed by: Pounding the Enemy (pounding_the_enemy.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must defeat ten Brokentusk pawns to prove my value to the Militia.", 10, 100, "I must aid Freeport by defeating the Brokentusk pawns.", 2489, 1270130, 1270027, 1270039, 1270022, 1270019, 1270087)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian009b.mp3", "", "", 3351588566, 3135177671, Player)
	AddConversationOption(conversation, "I will do so.")
	StartConversation(conversation, QuestGiver, Player, "Get to work, citizen. You have your orders, now carry them out.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I defeated 10 Brokentusk pawns and proved my worth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I crushed the Brokentusk pawns as ordered.")
	
	AddQuestStepChat(Quest, 2, "I should report back to Lieutenant Argosian at the first outpost.", 1, "I should return to the lieutenant and tell him of my victory.", 0, 1270031)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have reported back to Lieutenant Argosian.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to the lieutenant.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "Following the orders of Lieutenant Argosian, I defeated a number of the Brokentusk pawns. They were relatively easy prey, so I will ask Argosian for a more challenging assignment.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledOrcs(Quest, QuestGiver, Player)
	end
end