--[[
	Script Name	: Quests/WillowWood/a_task_for_daelyn.lua
	Script Purpose	: Handles the quest, "A Task for Daelyn"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Willow Wood
	Quest Giver: Daelyn Twinstar
	Preceded by: Wisdom in the Wild (wisdom_in_the_wild.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find Elvic Garrett.", 1, "Daelyn Twinstar would like me to deliver his latest work to Elvic Garrett in the Forest Ruins.", 0, 1960007)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar031b.mp3", "", "", 2282006667, 2437930870, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Thanks for your help, " .. GetName(Player) .. ". I hope our discussions about our race will prove useful to you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Elvic Garrett.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered Daelyn Twinstar's essay to Elvic Garrett.")
	UpdateQuestDescription(Quest, "I have delivered Daelyn's work to Elvic Garrett.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end