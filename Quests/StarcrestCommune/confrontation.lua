--[[
	Script Name	: Quests/StarcrestCommune/confrontation.lua
	Script Purpose	: Handles the quest, "Confrontation"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Maareona Ludimintium
	Preceded by: Hidden Treasures (hidden_treasures.lua)
	Followed by: 
--]]

-- Items ID's
local FOLDING_STAND = 7379
local NULLIFICATION_STONE = 10087
local SOUL_SPIKE = 13134

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to retrieve materials for a public demonstration from Cayan Sable. I can get to Cayan by climbing the bench behind the northwest corner of the armor shop.", 1, "I will need to confront the intended recipient of the package we intercepted. Cayan may know where to find him.", 0, 2340009) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToCayan")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
		FaceTarget(QuestGiver, Player)
		conversation = CreateConversation()

		PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona029.mp3", "", "", 2162492923, 520954117, Player)
		AddConversationOption(conversation, "How do I destroy the soul spike?", "TapIt")
		StartConversation(conversation, QuestGiver, Player, "He might, but do not worry. He will not harm you, not here. At most he will attempt to pull you to Freeport with him. I do not think I need to lecture you on that.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	while HasItem(Player, FOLDING_STAND, 1) do
		RemoveItem(Player, FOLDING_STAND)
	end
	
	while HasItem(Player, NULLIFICATION_STONE, 1) do
		RemoveItem(Player, NULLIFICATION_STONE)
	end
	
	while HasItem(Player, SOUL_SPIKE, 1) do
		RemoveItem(Player, SOUL_SPIKE)
	end
end

function step1_complete_talkedToCayan(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gotten the needed materials.")
	
	-- folding stand
	SummonItem(Spawn, FOLDING_STAND)
	
	AddQuestStep(Quest, 2, "I need to put a display in the central area of the Starcrest Commune, near the fountain of Deep Reflection.", 1, 100, "I will need to confront the intended recipient of the package we intercepted. Cayan may know where to find him.")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_placedDisplay")
end

function step2_complete_placedDisplay(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I put on my demonstration. Velderoth Malraen attempted to interrupt me.")
	
	AddQuestStepChat(Quest, 3, "I need to return to Maareona and tell her what happened.", 1, "I will need to confront the intended recipient of the package we intercepted. Cayan may know where to find him.", 0, 2340006)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, 3, "I have spoken with Maareona.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Velderoth Malraen escaped after I confronted him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToCayan(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_placedDisplay(Quest, QuestGiver, Player)
	end
end