--[[
	Script Name	: SpawnScripts/WillowWood/Trueshot.lua
	Script Purpose	: Trueshot <Bowyer>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1759256427, 830987678, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 2211929083, 2050297502, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "If steel is what you seek, traveler, then look no further.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1332319343, 1214035917, Spawn)
	end
end