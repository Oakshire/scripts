--[[
	Script Name	: Quests/Caves/an_explosive_idea.lua
	Script Purpose	: Handles the quest, "An Explosive Idea"
	Script Author	: Scatman
	Script Date	: 2009.10.18
	
	Zone       : The Caves
	Quest Giver: Emma Torque
	Preceded by: None
	Followed by: Destroying the Foundation (destroying_the_foundation.lua)
--]]


function Init(Quest)
	-- blasting powder
	AddQuestStepObtainItem(Quest, 1,  "I need to collect the explosive powder from 15 piles of powdered minerals.", 15, 100,  "Emma Torque has asked me to collect some explosive powder for her.", 3478,  3801)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotMinerals")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_005a.mp3", "", "", 3292345907, 870183962, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "The explosive potential is... amazing! I can't wait!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotMinerals(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the explosive powder from 15 piles of powdered minerals.")

	AddQuestStepChat(Quest, 2, "I need to bring this explosive powder to Emma Torque.", 1, "Emma Torque has asked me to collect some explosive powder for her.", 3478, 1970012)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- blasting powder
	while HasItem(Player, 3801) do
		RemoveItem(Player, 3801)
	end
	UpdateQuestStepDescription(Quest, 2, "I have brought Emma Torque the explosive powder.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done Emma's task for her.")
	UpdateQuestDescription(Quest, "I have collected the explosive powder that Emma required.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotMinerals(Quest, QuestGiver, Player)
	end
end