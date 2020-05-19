--[[
	Script Name	: Quests/Graystone/late_shipment.lua
	Script Purpose	: Handles the quest, "Late Shipment"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : Graystone Yard
	Quest Giver: Burk Stoneshatter
	Preceded by: A Time For Fighting (a_time_for_fighting.lua)
	Followed by: In the Drink (in_the_drink.lua)
--]]

-- Items
local OVERFLOW_MANIFEST = 10268

function Init(Quest)
	AddQuestStep(Quest, 1, "I should check the Overflow Manifest that Burk gave me to figure out where I might find the Graystone Courier.", 1, 100, "I need to figure out what has happened to Burk's package.", 0)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_inspectedManifest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Overflow Manifest
	if not HasItem(Player, OVERFLOW_MANIFEST, 1) then
		SummonItem(Player, OVERFLOW_MANIFEST, 1)
	end
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter018.mp3", "", "", 2230644689, 1477811469, Player)
	AddConversationOption(conversation, "All right, I'll return soon.")
	StartConversation(conversation, QuestGiver, Player, "Hah hah hah! No, don't do that. Just see if he knows where my package is.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_inspectedManifest(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have read the Overflow Manifest.")
	
	AddQuestStepChat(Quest, 2, "I need to ask the Graystone Courier about Burk's shipment. I should check the locations given on the Overflow Manifest.", 1, "I need to figure out what has happened to Burk's package.", 0, 2350048)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToCourier")
end

function step2_complete_talkedToCourier(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have questioned the Graystone Courier.")
	
	AddQuestStepChat(Quest, 3, "The courier doesn't have Burk's package, but suggested I talk to the Shipping Coordinator on the docks.", 1, "I need to figure out what has happened to Burk's package.", 0, 2350004)
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToCoordinator")
end

function step3_complete_talkedToCoordinator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with the Shipping Coordinator")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with a number of people but I am still not sure what has happened to Burk's package.")
	
	-- Overflow Manifest
	while HasItem(Player, OVERFLOW_MANIFEST) do
		RemoveItem(Player, OVERFLOW_MANIFEST)
	end
	
	AddQuestStep(Quest, 4, "I need to check all 13 of the boxes and barrels on the docks to see if any of them are from Shipment #GG4QC", 13, 100, "The Shipping Coordinator has suggested that I check the shipment at the end of the docks for Burk's package.", 2285)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_inspectedBarrels")
end

function step4_complete_inspectedBarrels(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "There are many shipments on the docks and they are all labeled. None of them appear to be shipment #GG4QC.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I did not find Burk's package in the shipment on the docks.")
	
	AddQuestStepChat(Quest, 5, "Burk's shipment was not among the newer boxes, I should speak with the Shipping Coordinator again.", 1, "I still have not found Burk's package.", 0, 2350004)
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToCoordinator")
end

function step5_complete_talkedToCoordinator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with the Shipping Coordinator.")
	
	AddQuestStepChat(Quest, 6, "The Shipping Coordinator has suggested I speak with the dock loader, Marus Donoval. He says he should be in the tavern.", 1, "I still have not found Burk's package.", 0, 2350035)
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToMarus")
end

function step6_complete_talkedToMarus(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have spoken with Marus Donoval.")
	
	AddQuestStepChat(Quest, 7, "Marus Donoval thinks some crates may have fallen into the water. I should speak with the Shipping Coordinator about this.", 1, "I still have not found Burk's package.", 0, 2350004)
	AddQuestStepCompleteAction(Quest, 7, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have spoken with the Shipping Coordinator.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I believe I may know what happened to Burk's package.")
	
	UpdateQuestDescription(Quest, "I have determined what has happened to Burk's missing shipment. I may be able to work with the Shipping Coordinator in the Graystone Yard to get it back.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_inspectedManifest(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToCourier(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToCoordinator(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_inspectedBarrels(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToCoordinator(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_talkedToMarus(Quest, QuestGiver, Player)
	end
end