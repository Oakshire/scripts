--[[
	Script Name	: Quests/LongshadowAlley/brewing_trouble.lua
	Script Purpose	: Handles the quest, "Brewing Trouble"
	Script Author	: Scatman
	Script Date	: 2009.04.07
	
	Zone       : Longshadow Alley
	Quest Giver: Aldera V'Exxa
	Preceded by: A Lesson to Learn (a_lesson_to_learn.lua)
	Followed by: A Lesson Learned (a_lesson_learned.lua)
--]]

-- Item ID's
local ALCHEMICAL_MEDIUM = 3404

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to get an alchemical medium from a man named Kalraath.", 1, "I need to get an alchemical medium from Kalraath. He is near the gate to North Freeport.", 0, 1380043)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToKalraath")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_011.mp3", "", "", 1591440619, 3916449893, Player)
	AddConversationOption(conversation, "I will return with the medium from Kalraath.")
	StartConversation(conversation, QuestGiver, Player, "Let him know that I sent you, but remember that no great Teir'Dal ever accomplished anything without discretion.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	RemoveAlchemicalMedium(Player)
end

function Step1_Complete_SpokeToKalraath(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I need to return to Aldera with the Medium.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I need to return to Aldera with the Medium.")
	
	-- Alchemical Medium
	SummonItem(Player, ALCHEMICAL_MEDIUM)
	
	AddQuestStepChat(Quest, 2, "I have received the alchemical medium from Kalraath, I need to return to Aldera with it now.", 1, "I have received the alchemical medium I needed from Kalraath. I need to return to Aldera.", 0, 1380006)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeToAldera")
end

function Step2_Complete_SpokeToAldera(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Aldera was pleased with the alchemical medium that I brought her.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Aldera was pleased with the alchemical medium that I brought her.")
	
	AddQuestStepChat(Quest, 3, "By refreshing my memory with a few questions, Aldera will ensure that no mistakes are made.", 1, "Aldera wants to ensure I understand the task we are undertaking.", 0, 1380006)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	RemoveAlchemicalMedium(Player)

	UpdateQuestDescription(Quest, "I was able to get the alchemical medium from Kalraath, and I have given it to Aldera. She seemed pleased by it, and started another one of her long winded conversations when I gave it to her.")
	GiveQuestReward(Quest, Player)
end

function RemoveAlchemicalMedium(Player)
	while HasItem(Player, ALCHEMICAL_MEDIUM, 1) do
		RemoveItem(Player, ALCHEMICAL_MEDIUM)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToKalraath(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeToAldera(Quest, QuestGiver, Player)
	end
end
