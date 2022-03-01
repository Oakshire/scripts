--[[
	Script Name	: Quests/LongshadowAlley/a_lesson_learned.lua
	Script Purpose	: Handles the quest, "A Lesson Learned"
	Script Author	: Scatman
	Script Date	: 2009.04.11
	
	Zone       : Longshadow Alley
	Quest Giver: Aldera V'Exxa
	Preceded by: Brewing Trouble (brewing_trouble.lua)
	Followed by: Meet the Custodian (meet_the_custodian.lua)
--]]

-- Item ID's
local POISONED_LOAF_OF_BREAD = 10496

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to place this poisoned bread on Lynsia's vendor booth, where Teah will be sure to find it.", 10, "Aldera has given me a loaf of poisoned bread. I need to place to loaf on Lynsia's booth near the Destroyed Knowledge Portal so Teah can find it.", 300, -1.41, 0, -19.60)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_PlacedBread")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Poisoned Loaf of Bread
	if not HasItem(Player, POISONED_LOAF_OF_BREAD) then
		SummonItem(Player, POISONED_LOAF_OF_BREAD)
		SendMessage(Player, "You receive 1 Poisoned Loaf of Bread")
	end

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_025.mp3", "", "", 2044102497, 3428374214, Player)
	AddConversationOption(conversation, "Of course.")
	StartConversation(conversation, QuestGiver, Player, "Before we deal with Teah, I feel you must learn about the current split in our people's loyalties. You may not need this information now, but it may be useful later.  Take heed of my words and choose carefully if the choice is presented to you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	RemoveBread(Player)
end

function RemoveBread(Player)
	while HasItem(Player, POISONED_LOAF_OF_BREAD, 1) do
		RemoveItem(Player, POISONED_LOAF_OF_BREAD)
	end
end

function Step1_Complete_PlacedBread(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have planted the bread.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have planted the bread.")
	
	RemoveBread(Player)
	
	-- a loaf of bread
	SpawnMob(GetZone(Player), 1380102, false, -3.04, 1.06, -19.24, 290)
	
	-- Teah
	SpawnMob(GetZone(Player), 1380046, false, 16.79, 0, -16.03, 70.02)
	
	AddQuestStepChat(Quest, 2, "I need to return to Aldera to let her know that I am finished.", 1, "With the bread placed on Lynsia's counter, who showed up but that sloth, Teah?", 0, 1380006)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Everything I have been working on with Aldera has gone well and Teah has learned a lesson he will never forget.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_PlacedBread(Quest, QuestGiver, Player)
	end
end
