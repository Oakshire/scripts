--[[
	Script Name	: SpawnScripts/Nettleville/GarionDunam.lua
	Script Purpose	: Garion Dunam <Alchemist>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: Updated 1/6/2020 by Shatou
	Script Notes : Created Delivery quest. Applied voiceovers. Reorganized turnins and hails. 2022.03.06 Dorbin
--]]

local FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID = 502
local FAR_SEAS_DIRECT_REQUISITION_CVS0431_QUEST_ID = 503
local Delivery = 5499

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, Delivery)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		Talk(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end




function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		local choice = math.random(1, 5)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gm_a8ed74c7.mp3", "There are no refunds for caster error at this shop! Oh ... hello you're not here about a refund.", "no", 383508519, 1836231230, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gm_59de96bd.mp3", "What happened to the highly explosive bottle that was on my desk?  Have you seen it?", "peer", 1482977865, 753937939, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/alchemist_garion_dunam/qey_village01/alchemistgarion000.mp3", "Garion is my name, potions my game.  What can I get for you?", "hello", 3929426518, 2943920843, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gm_ec533e4c.mp3", "Are you wounded?  I just made up a fresh batch of healing potions an hour ago.", "hello", 3929603973, 2846331407, Spawn)
		elseif choice == 5 then
			PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gm_efd903ba.mp3", "Hello, adventurer! Are you looking for a specific potion or ingredient?", "agree", 3478121196, 1626504328, Spawn)
		end
end
	
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "voiceover/english/alchemist_garion_dunam/qey_village01/alchemistgarion000.mp3", "", "", 3929426518, 2943920843, Spawn)
		conversation = CreateConversation()
	if  GetQuestStep(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID) == 3 then
		AddConversationOption(conversation, "I have a direct delivery from the Far Seas Trading Co.", "dlg_0_1")
	end
	if  GetQuestStep(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0431_QUEST_ID) == 2 then
		AddConversationOption(conversation, "I have a direct delivery from the Far Seas Trading Co.", "dlg_0_1")
	end
	if  not HasQuest(Spawn, Delivery) and not HasCompletedQuest(Spawn, Delivery) and GetLevel(Spawn) >= 6 then
		AddConversationOption(conversation, "Have any work?", "DeliveryJob")
	end
	if  GetQuestStep(Spawn, Delivery) == 2 then
		AddConversationOption(conversation, "I have delievered the elixer. Here is Tillheel's payment.", "DeliveryDone")
	end
		AddConversationOption(conversation, "Just looking around. Thanks.")
		StartConversation(conversation, NPC, Spawn, "Garion is my name, potions my game.  What can I get for you?")
	end
	
function DeliveryJob(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "voiceover/english/alchemist_garion_dunam/qey_village01/alchemistgarion001.mp3", "", "nod", 2055816089, 3874140273, Spawn)
		conversation = CreateConversation()
		AddConversationOption(conversation, "Sure. I'll deliver this for you.","QuestOffer")
		AddConversationOption(conversation, "On second thought, nevermind.")		
		StartConversation(conversation, NPC, Spawn, "Garion is my name, potions my game.  What can I get for you?")
	end

function QuestOffer(NPC,Spawn,Quest)
	FaceTarget(NPC, Spawn)    
    OfferQuest(NPC,Spawn, 5499)
end

function DeliveryDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "voiceover/english/alchemist_garion_dunam/qey_village01/alchemistgarion002.mp3", "", "thank", 4005071360, 3982549677, Spawn)
		conversation = CreateConversation()
		SetStepComplete(Spawn, Delivery, 2)
		AddConversationOption(conversation, "I'll keep that in mind. Thank you.")
		StartConversation(conversation, NPC, Spawn, "A job well done! Please, keep the change, and if you ever need any potions remember name 'Garion Dunum, Alchemist Supreme'.")
	end


--[[Far Seas Direct Requisition CVS0276 QUEST (502)]]----[[Far Seas Direct Requisition CVS0431 QUEST (503)]]--
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
 	PlayFlavor(NPC, "voiceover/english/alchemist_garion_dunam/qey_village01/alchemistgarion003.mp3", "", "", 784804131, 2104992484, Spawn)

	if HasQuest(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID) then
		SetStepComplete(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID, 3)
		
	elseif HasQuest(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0431_QUEST_ID) then
		SetStepComplete(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0431_QUEST_ID, 2)
	end
	
	AddConversationOption(conversation, "What customers!?")
	StartConversation(conversation, NPC, Spawn, "'Bout time this made its way to the alchemist supreme! I was about to complain to the Far Seas. Well, a job done is a job done. Here's your pay. Move along. You're scaring the customers.")
end