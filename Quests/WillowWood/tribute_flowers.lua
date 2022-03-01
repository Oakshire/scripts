--[[
	Script Name	: Quests/WillowWood/tribute_flowers.lua
	Script Purpose	: Handles the quest, "Tribute Flowers"
	Script Author	: Scatman
	Script Date	: 2009.01.17
	
	Zone       : The Willow Wood
	Quest Giver: Aelis
	Preceded by: A Task for Davyn (a_task_for_davyn.lua)
	Followed by: A Tribute to Ulinir (a_tribute_to_ulinir.lua)
--]]


function Init(Quest)
	-- Tribute Flower
	AddQuestStepObtainItem(Quest, 1,  "I need to pick some flowers from the Willow Wood and bring them to Aelis.", 8, 100,  "I need to collect some flowers for Davyn's tribute and return them to Aelis.", 1952, 14666)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotFlowers")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis021b.mp3", "", "", 810591684, 4247178806, Player)
	AddConversationOption(conversation, "All right, I will return.")
	StartConversation(conversation, QuestGiver, Player, "By the time you have collected enough, I am sure I will have written the tribute.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotFlowers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have picked the flowers.")

	AddQuestStepChat(Quest, 2, "I need to take these flowers Aelis in the Willow Wood.", 1, "I need to collect some flowers for Davyn's tribute and return them to Aelis.", 0, 2370038)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToAelis")
end

function Step2_Complete_TalkedToAelis(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Aelis the flowers she requires.")

	-- remove Tribute Flowers
	while HasItem(Player, 14666) do
		RemoveItem(Player, 14666)
	end

	-- summon Tribute for Ulinir
	if not HasItem(Player, 14667, 1) then
		SummonItem(Player, 14667, 1)
	end
	
	AddQuestStepChat(Quest, 3, "I need to take the completed tribute to Davyn Thornbranch in Willow Wood.", 1, "I need to collect some flowers for Davyn's tribute and return them to Aelis.", 0, 2370033)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have taken the tribute to Davyn.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given the flowers to Aelis.")
	UpdateQuestDescription(Quest, "I gave Aelis the flowers she requested. She will use them to help build Davyn's tribute.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotFlowers(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToAelis(Quest, QuestGiver, Player)
	end
end