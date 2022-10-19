--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/Jemila.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 03:10:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	chance = math.random(1, 100)
	if chance <= 25 then
		SaySomethingRandom(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function SaySomethingRandom(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_aoi_gf_c5e79ff5.mp3", "Hello there!  Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 2091371377, 2422178491, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 591569637, 3640467043, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 3487732561, 2995138728, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2213475197, 3871690614, Spawn)
	end
end