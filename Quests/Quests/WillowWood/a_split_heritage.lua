--[[
	Script Name	: Quests/WillowWood/a_split_heritage.lua
	Script Purpose	: Handles the quest, "A Split Heritage"
	Script Author	: Scatman
	Script Date	: 2009.09.20
	
	Zone       : The Willow Wood
	Quest Giver: Daelyn Twinstar
	Preceded by: None
	Followed by: A Joined Heritage (a_joined_heritage.lua)
--]]

local ASplitHeritage = 218

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Gar Smolten behind the inn.", 1, "I need to speak with a human named Gar Smolten. Daelyn said he should be behind the inn.", 0, 2370026)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithGar")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar015.mp3", "", "", 1728941496, 2387813278, Player)
	AddConversationOption(conversation, "Very well.")
	StartConversation(conversation, QuestGiver, Player, "I'm glad to hear it. Return to me when you have spoken to them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithGar(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Gar Smolten.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Gar Smolten.")

	AddQuestStepChat(Quest, 2, "I need to speak with Gar Smolten once I know the contents of the boxes.", 1, "I should speak with Gar Smolten behind the inn again when I know which boxes contain what.", 0, 2370026)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithGar")
end

function Step2_Complete_SpokeWithGar(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Gar Smolten.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have completed the task for Gar.")

	AddQuestStepChat(Quest, 3, "I need to speak with Lia Serene near the entrance to the Elddar Grove.", 1, "I need to speak with an elf named Lia Serene. Daelyn said she should be near the entrance to the Elddar Grove.", 0, 2370030)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SpokeWithLia")
end

function Step3_Complete_SpokeWithLia(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lia Serene.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Lia Serene.")

	AddQuestStep(Quest, 4, "I need to check under the north-east corner of the inn-roof for a nest or eggs.", 1, 100, "I need to go check the spots in the Willow Wood that Lia mentioned may have eggs or nests near them.", 0) 
	AddQuestStep(Quest, 5, "I need to check under the tree near the entrance to the docks for a nest or eggs.", 1, 100, "I need to go check the spots in the Willow Wood that Lia mentioned may have eggs or nests near them.", 0) 
	AddQuestStep(Quest, 6, "I need to check under the tree on the path to the entrance to the Forest Ruins for a nest or eggs.", 1, 100, "I need to go check the spots in the Willow Wood that Lia mentioned may have eggs or nests near them.", 0) 
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_FoundEgg")
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_FoundEgg")
	AddQuestStepCompleteAction(Quest, 6, "Step6_Complete_FoundEgg")
end

function Step4_Complete_FoundEgg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found an egg near the inn.")
	
	if QuestIsComplete(Player, ASplitHeritage) then
		FoundAllEggs(Quest, QuestGiver, Player)
	end
end

function Step5_Complete_FoundEgg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found an egg from under the tree near the entrance to the docks.")
	
	if QuestIsComplete(Player, ASplitHeritage) then
		FoundAllEggs(Quest, QuestGiver, Player)
	end
end

function Step6_Complete_FoundEgg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have found an egg from the tree on the path to the Forest Ruins.")
	
	if QuestIsComplete(Player, ASplitHeritage) then
		FoundAllEggs(Quest, QuestGiver, Player)
	end
end

function FoundAllEggs(Quest, QuestGiver, Player)
	local egg1 = SpawnMob(GetZone(QuestGiver), 2370105, 0, 815.854, -19.6821, -585.67, 257)
	local egg2 = SpawnMob(GetZone(QuestGiver), 2370105, 0, 815.888, -19.6638, -585.578, 155)
	local egg3 = SpawnMob(GetZone(QuestGiver), 2370105, 0, 815.941, -19.6429, -585.632, 221)
	Despawn(egg1, 300000)
	Despawn(egg2, 300000)
	Despawn(egg3, 300000)
		
		
	UpdateQuestTaskGroupDescription(Quest, 4, "I have collected eggs from the spots Lia mentioned.")

	AddQuestStepChat(Quest, 7, "I need to speak with Lia Serene again.", 1, "I should speak with Lia near the entrance to the Elddar Grove again and give her these eggs.", 0, 2370030)
	AddQuestStepCompleteAction(Quest, 7, "Step7_Complete_SpokeWithLia")
end

function Step7_Complete_SpokeWithLia(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have spoken with Lia Serene again.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have completed the task for Lia.")

	AddQuestStepChat(Quest, 8, "I need to speak with Daelyn.", 1, "I should return to Daelyn Twinstar now that I have done what he asked of me.", 0, 2370037)
	AddQuestStepCompleteAction(Quest, 8, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have spoken with Daelyn.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have spoken with Daelyn Twinstar.")
	UpdateQuestDescription(Quest, "After speaking with Gar and Lia I returned to Daelyn, he asked about how they treated me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithGar(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithGar(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SpokeWithLia(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_FoundEgg(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_FoundEgg(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6_Complete_FoundEgg(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7_Complete_SpokeWithLia(Quest, QuestGiver, Player)
	end
end