--[[
	Script Name	: Quests/Castleview/components_of_growth.lua
	Script Purpose	: Handles the quest, "Components of Growth"
	Script Author	: Scatman
	Script Date	: 2009.10.02
	
	Zone       : Castleview Hamlet
	Quest Giver: Vindain Greenfaith
	Preceded by: None
	Followed by: Sowing Beauty (sowing_beauty.lua)
--]]

local ComponentsOfGrowth = 223

function Init(Quest)
	-- Green Wisp Seeds
	AddQuestStepObtainItem(Quest, 1,  "I need to collect Green Wisp seeds from the Green Wisp Bushes near the Fountain of Valor in southwestern Castleview Hamlet.", 1, 100,  "I need to collect a number of components. Vindain Greenfaith says they can all be found in Castleview Hamlet.", 2315, 7947)
	AddQuestStep(Quest, 2, "I need to collect some blessed water from the Fountain of Valor. I can do this by examining the water flask that Vindain gave me while near the fountain.", 1, 100, "I need to collect a number of components. Vindain Greenfaith says they can all be found in Castleview Hamlet.", 980)
	-- Mana-Enriched Soil
	AddQuestStepObtainItem(Quest, 3,  "I need to gather some enriched soil from the barrel on the northeastern corner of the armor shop.", 1, 100,  "I need to collect a number of components. Vindain Greenfaith says they can all be found in Castleview Hamlet.", 342,  9305)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotSeeds")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_gotWater")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_gotSoil")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
			
	-- summon Water Flask
	if not HasItem(Player, 15337, 1) then
		SummonItem(Player, 15337, 1)
	end
			
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain014a.mp3", "", "", 1855493123, 719019896, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Once you've collected the components return to me.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotSeeds(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Green Wisp seeds.")
	
	if QuestIsComplete(Player, ComponentsOfGrowth) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step2_complete_gotWater(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected some blessed water.")
	
	if QuestIsComplete(Player, ComponentsOfGrowth) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step3_complete_gotSoil(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected some enriched soil.")
	
	if QuestIsComplete(Player, ComponentsOfGrowth) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the needed items.")
	
	AddQuestStepChat(Quest, 4, "I should return to Vindain Greenfaith, near the Fountain of Valor.", 1, "Now that I have collected the needed components I should return to Vindain Greenfaith.", 0, 2360007)
	AddQuestStepCompleteAction(Quest, 4, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- Green Wisp Seeds
	while HasItem(Player, 7947) do
		RemoveItem(Player, 7947)
	end
	
	-- Water Flask
	while HasItem(Player, 15337) do
		RemoveItem(Player, 15337)
	end
	
	-- Mana-Enriched Soil
	while HasItem(Player, 9305) do
		RemoveItem(Player, 9305)
	end
	UpdateQuestStepDescription(Quest, 4, "I have spoken to Vindain Greenfaith.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Vindain Greenfaith")
	UpdateQuestDescription(Quest, "I have collected the needed components to carry out Vindain's plan.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotSeeds(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_gotWater(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_gotSoil(Quest, QuestGiver, Player)
	end
end