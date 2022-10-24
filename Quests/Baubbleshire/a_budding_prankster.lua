--[[
	Script Name	: Quests/Baubbleshire/a_budding_prankster.lua
	Script Purpose	: Handles the quest, "A Budding Prankster"
	Script Author	: Scatman is a gangsta!
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Rondo "The Belly" Roundstew
	Preceded by: Paying Off a Sweet Debt (paying_off_a_sweet_debt.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to Remmy Tumbub.", 1, "I need to find Remmy in the Forest Ruins and pretend to be from the Qeynos guard.", 0, 1960016)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")
    UpdateQuestZone(Quest,"Forest Ruins")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm sure it will be great.")
	StartConversation(conversation, QuestGiver, Player, "I just wish I could be there to see it.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Remmy Tumbub.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Remmy.")
	UpdateQuestDescription(Quest, "I have played a practical joke on Remmy!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end