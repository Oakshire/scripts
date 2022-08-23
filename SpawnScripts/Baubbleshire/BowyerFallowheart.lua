--[[
    Script Name    : SpawnScripts/Baubbleshire/BowyerFallowheart.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 04:08:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	if math.random(1, 100) <= 25 then
	FaceTarget(NPC, Spawn)
    RandomGreeting(NPC, Spawn)
    end
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1035878974, 1582137754, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 41344948, 2516334772, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 1122140911, 2707150069, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3623244639, 2766324485, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there!  Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1226726886, 4190877381, Spawn, 0)
	end
end