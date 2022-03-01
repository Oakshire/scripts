--[[
	Script Name	: Quests/Baubbleshire/scraptastic.lua
	Script Purpose	: Handles the quest, "Scraptastic!"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Neezer Grund
	Preceded by: None
	Followed by: Nogginspark Reactors (nogginspark_reactors.lua)
--]]

-- Item ID's
local SCRAP_METAL = 11996

function Init(Quest)
	-- Scrap Metal
	AddQuestStepHarvest(Quest, 1,  "I need to collect some scrap metal for Neezer Grund.", 7, 100,  "I need to scour the Baubbleshire for some scrap metal.", 64, SCRAP_METAL) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotMetal")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund022a.mp3", "", "", 2015655109, 4127478341, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Don't forget to check in the water!")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove Scrap Metal
	while HasItem(Player, SCRAP_METAL) do
		RemoveItem(Player, SCRAP_METAL)
	end
end

function step1_complete_gotMetal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some scrap metal.")
	
	AddQuestStepChat(Quest, 2, "I need to return this scrap metal to Neezer Grund.", 1, "I need to scour the Baubbleshire for some scrap metal.", 0, 2380038)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Neezer the scrap metal he asked for.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected some scrap metal for Neezer Grund.")
	
	-- Remove Scrap Metal
	while HasItem(Player, SCRAP_METAL) do
		RemoveItem(Player, SCRAP_METAL)
	end

	UpdateQuestDescription(Quest, "I have collected the scrap metal for Neezer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotMetal(Quest, QuestGiver, Player)
	end
end