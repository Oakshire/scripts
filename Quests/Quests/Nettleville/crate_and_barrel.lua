--[[
	Script Name	: Quests/Nettleville/crate_and_barrel.lua
	Script Purpose	: Handles the quest, "Crate and Barrel"
	Script Author	: Scatman
	Script Date	: 2008.09.28
	
	Zone       : Nettleville
	Quest Giver: Johfrit Gythell
	Preceded by: Looking for Work is Hard Work (looking_for_work_is_hard_work.lua)
	Followed by: A Budding Hunter (a_budding_hunter.lua)
--]]

-- Item ID's
local WATERLOGGED_CRATE = 15346
local WATERPROOF_BARREL = 15348

function Init(Quest)
	AddQuestStepHarvest(Quest, 1,  "Get the crate that fell into the waterways at the Mariner's Bell", 1, 100,  "Johfrit has asked me to pick up some items that are underwater at the Mariner's Bell.", 655,  WATERLOGGED_CRATE) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_complete_ObtainedCrate")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell016.mp3", "", "", 3784629349, 1480348336, Player)
	AddConversationOption(conversation, "I do need the work.  I'll be back with them soon!")
	StartConversation(conversation, QuestGiver, Player, "It is the only task I have at hand.  Retrieve both items and you will get paid for your work.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_complete_ObtainedCrate(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have obtained the crate.")
	
	AddQuestStepHarvest(Quest, 2,  "Get the barrel that is also underwater at the Mariner's Bell.", 1, 100,  "Johfrit has asked me to pick up some items that are underwater at the Mariner's Bell.", 2285,  WATERPROOF_BARREL) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_ObtainedBarrel")
end


function Step2_Complete_ObtainedBarrel(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have obtained the barrel.")
	
	AddQuestStepChat(Quest, 3, "Return to Johfrit Gythell near The Golden Scabbard armory.", 1, "Johfrit has asked me to pick up some items that are underwater at the Mariner's Bell.", 0, 2330033)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_TalkedToJohfrit")
end

function Step3_Complete_TalkedToJohfrit(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Johfrit with both items.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I obtained the stinky crate and barrel for Johfrit.")
	
	AddQuestStepChat(Quest, 4, "I am to deliver the crate to Amazu Kharliko here, in town.", 1, "I am to deliver the barrel and crate for some coin.", 397, 2330015)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_TalkedToAmazu")
end


function Step4_Complete_TalkedToAmazu(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I delivered the fish-smelling crate to Amazu.")
	
	-- a waterlogged crate
	while HasItem(Player, WATERLOGGED_CRATE, 1) do
		RemoveItem(Player, WATERLOGGED_CRATE)
	end
	
	AddQuestStepChat(Quest, 5, "I should take Luadine Shardalow her barrel. She is in the bank.", 1, "I am to deliver the barrel and crate for some coin.", 397, 2330013) 
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_TalkedToLuadine")
end

function Step5_Complete_TalkedToLuadine(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I delivered the barrel to Laudine.")
	
	-- a waterproof barrel
	while HasItem(Player, WATERPROOF_BARREL, 1) do
		RemoveItem(Player, WATERPROOF_BARREL)
	end
	
	AddQuestStepChat(Quest, 6, "Return to Johfrit Gythell with the money from Amazu and Laudine.", 1, "I am to deliver the barrel and crate for some coin.", 0, 2330033)
	AddQuestStepCompleteAction(Quest, 6, "Quest_Complete")
end


function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Johfrit paid me for the work that I was able to do for him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_complete_ObtainedCrate(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_ObtainedBarrel(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_TalkedToJohfrit(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_TalkedToAmazu(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_TalkedToLuadine(Quest, QuestGiver, Player)
	end
end