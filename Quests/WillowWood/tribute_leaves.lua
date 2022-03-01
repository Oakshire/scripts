--[[
	Script Name	: Quests/WillowWood/tribute_leaves.lua
	Script Purpose	: Handles the quest, "Tribute Leaves"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Willow Wood
	Quest Giver: Aelis
	Preceded by: Offering Help (offering_help.lua)
	Followed by: A Task for Davyn (a_task_for_davyn.lua)
--]]

function Init(Quest)
	-- Tribute Leaf
	AddQuestStepObtainItem(Quest, 1,  "I need to collect some leaves from the Dewdrop bushes in Willow Wood and bring them to Aelis.", 6, 100,  "I need to collect some leaves for Davyn's tribute and return them to Aelis.", 2098,  14668) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotLeaves")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis006a.mp3", "", "", 1165853979, 3023910277, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "As you collect them I will determine what will next be required for the tribute.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotLeaves(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the leaves.")
	
	AddQuestStepChat(Quest, 2, "I need to take these leaves back to Aelis in the Willow Wood.", 1, "I need to collect some leaves for Davyn's tribute and return them to Aelis.", 0, 2370038)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToAelis")
end

function Step2_Complete_TalkedToAelis(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Aelis the leaves she requires.")
	
	-- Tribute Leaf
	while HasItem(Player, 14668) do
		RemoveItem(Player, 14668)
	end
	
	AddQuestStepChat(Quest, 3, "I need to speak with Davyn and do a task for him.", 1, "I need to collect some leaves for Davyn's tribute and return them to Aelis.", 0, 2370033)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the leaves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the leaves.")
	
	UpdateQuestDescription(Quest, "I have given Aelis the leaves she asked for and spoken with Davyn. While Aelis works on the first part of the tribute, she has asked that I do a favor for Davyn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotLeaves(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToAelis(Quest, QuestGiver, Player)
	end
end