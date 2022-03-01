--[[
	Script Name	: SpawnScripts/Nettleville/Ajarn.lua
	Script Purpose	: Ajarn <Shieldsmith>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

function hailed(NPC, Spawn)
	Talk(NPC, Spawn)
end

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2595040836, 1903894062, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1405292242, 1170257111, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2292395976, 2840814777, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 668610071, 953653133, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2438244582, 4033825140, Spawn)
	end
end
