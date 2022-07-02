--[[
	Script Name	: Quests/Baubbleshire/fight_the_forgotten_guardians.lua
	Script Purpose	: Handles the quest, "Fight the Forgotten Guardians"
	Script Author	: Scatman
	Script Date	: 2009.01.14
	
	Zone       : Baubbleshire
	Quest Giver: Marshal Surefoot
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some forgotten guardians.", 5, 100, "I need to slay five Forgotten Guardians in the Forest Ruins.", 611, 1960038, 1960058)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedGuardians")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	UpdateQuestZone(Quest, "Forest Ruins")	

	AddConversationOption(conversation, "I will return victorious!")
	StartConversation(conversation, QuestGiver, Player, "Good! Return when you've bested them!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedGuardians(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed some forgotten guardians")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain five Forgotten Guardians.")
	UpdateQuestZone(Quest, "The Baubbleshire")	

	AddQuestStepChat(Quest, 2, "I must return to Marshal Surefoot.", 1, "I need to return to Marshal Surefoot in Baubbleshire.", 0, 2380044)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Marshal Surefoot.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to tell my tale to Marshal Surefoot.")
	UpdateQuestDescription(Quest, "I have faced and slain five Forgotten Guardians in the Forest Ruins per the orders of Marshal Surefoot. After telling him my tale of victory he was pleased and paid me for my service.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedGuardians(Quest, QuestGiver, Player)
	end
end