--[[
	Script Name	: Quests/PeatBog/reinforcements.lua
	Script Purpose	: Handles the quest, "Reinforcements"
	Script Author	: Scatman
	Script Date	: 2009.05.11
	
	Zone       : The Peat Bog
	Quest Giver: Lieutenant Dawson
	Preceded by: A Final Foe (a_final_foe.lua)
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I must report to Consul Bree in The Caves.", 1, "I must report to Consul Bree in The Caves to help in the defense of Qeynos.", 0, 1970010)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can do this.")
	StartConversation(conversation, QuestGiver, Player, "I know you can. Qeynos is counting on you, " .. GetName(Player) .. ". Make us proud!")
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have spoken with Consul Bree.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
