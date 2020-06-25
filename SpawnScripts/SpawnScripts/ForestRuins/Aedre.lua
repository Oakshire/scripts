--[[
	Script Name	: SpawnScripts/ForestRuins/Aedre.lua
	Script Purpose	: Aedre <General Goods>
	Script Author	: John Adams
	Script Date	: 2009.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	hailed(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_aoi_gf_c5e79ff5.mp3", "Hello there!  Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 489810336, 3318568259, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 2588954321, 88153469, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1381598517, 719278997, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1667555721, 2696093362, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1527285383, 3910629798, Spawn)
	else
	end

end
