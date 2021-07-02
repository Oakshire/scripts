--[[
	Script Name	: Quests/Oakmyst/reinforcements.lua
	Script Purpose	: Handles the quest, "Reinforcements"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	
	Zone       : Oakmyst Forest
	Quest Giver: Lieutenant Charlin
	Preceded by: Clean Up (clean_up.lua)
	Followed by: None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must report to Consul Bree in The Caves.", 1, "I must report to Consul Bree in The Caves to help in the defense of Qeynos.", 0, 1970010) 
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin027a.mp3", "", "salute", 1196044113, 40498286, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "I guess that's why they asked for you. Go, " .. GetName(Player) .. ", and be well. Thank you for all your help.")
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Consul Bree.")
	
	UpdateQuestDescription(Quest, "I have spoken with Consul Bree.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end