--[[
	Script Name	: Quests/LongshadowAlley/a_lesson_to_learn.lua
	Script Purpose	: Handles the quest, "A Lesson to Learn"
	Script Author	: Scatman
	Script Date	: 2009.04.07
	
	Zone       : Longshadow Alley
	Quest Giver: Aldera V'Exxa
	Preceded by: A Clear Understanding (a_clear_understanding.lua)
	Followed by: Brewing Trouble (brewing_trouble.lua)
--]]

-- Item ID's
local SHADOWS_KISS = 12113

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1,  "I need to retrieve a few clumps of Shadows' Kiss for Alders.", 5, 100,  "Aldera has sent me to collect Shadows' Kiss - a small flowery fungus near the sewer.", 318,  SHADOWS_KISS)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotFungus")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_006b.mp3", "", "", 2711787328, 3720975836, Player)
	AddConversationOption(conversation, "I will be back.")
	StartConversation(conversation, QuestGiver, Player, "Excellent. I look forward to your return.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	RemoveShadowsKiss(Player)
end

function RemoveShadowsKiss(Player)
	while HasItem(Player, SHADOWS_KISS, 1) do
		RemoveItem(Player, SHADOWS_KISS)
	end
end

function Step1_Complete_GotFungus(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found all of the Shadows' Kiss Aldera needs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I need to return to Aldera with the Shadows' Kiss I have collected.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Aldera with the Shadows' Kiss.", 1, "I have collected the Shadows' Kiss for Aldera, I need to return it.", 0, 1380006)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	RemoveShadowsKiss(Player)
	
	UpdateQuestDescription(Quest, "I met a Teir'Dal woman named Aldera. She offered to teach me the proper ways of being Teir'Dal in exchange for helping her teach an improper Teir'Dal a lesson. The first step in this 'lesson' was to collect some poisonous fungus for her, which I have done.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotFungus(Quest, QuestGiver, Player)
	end
end
