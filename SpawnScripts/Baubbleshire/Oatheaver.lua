--[[
	Script Name	: SpawnScripts/Baubbleshire/Oatheaver.lua
	Script Purpose	: Oatheaver <Combat Arts>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if math.random(1, 100) <= 25 then
		SaySomethingRandom(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function SaySomethingRandom(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1226726886, 4190877381, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3623244639, 2766324485, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1035878974, 1582137754, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2106259105, 3779666567, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 1122140911, 2707150069, Spawn)
	end
end
