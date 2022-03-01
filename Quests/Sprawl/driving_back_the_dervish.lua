--[[
	Script Name	: Quests/TheSprawl/driving_back_the_dervish.lua
	Script Purpose	: Handles the quest, "Driving Back the Dervish"
	Script Author	: Scatman
	Script Date	    : 2009.07.27
	
	Zone       : The Sprawl
	Quest Giver: Liege Aquila
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must defeat eight Dervish crooks.", 8, 100, "I must battle the Dervish to keep them in line.", 611, 1260000)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledCrooks")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will do so.")
	StartConversation(conversation, QuestGiver, Player, "Glad to hear it. Defeat them and return to me for your payment.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledCrooks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've defeated the Dervish in battle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've taught the Dervish a lesson.")
	
	AddQuestStepChat(Quest, 2, "I should report back to Liege Aquila.", 1, "I should report back to Liege Aquila near the gate to the Ruins.", 0, 1260003)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have reported back to Liege Aquila.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to Liege Aquila.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I fought back against the Dervish in the Sprawl. So far they seem to be contained, but their numbers are significant. I fear this battle will be ongoing.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_KilledCrooks(Quest, QuestGiver, Player)
	end
end