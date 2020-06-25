--[[
	Script Name	: SpawnScripts/WillowWood/DrystanSeaside.lua
	Script Purpose	: Drystan Seaside <General Goods>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1293853317, 115757857, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 397083190, 607860501, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3839095688, 1767190740, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1745995078, 3389510546, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2835834469, 3534853920, Spawn)
	end
end
