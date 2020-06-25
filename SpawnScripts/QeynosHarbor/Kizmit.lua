--[[
	Script Name	: SpawnScripts/QeynosHarbor/Kizmit.lua
	Script Purpose	: Kizmit <Banker>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/banker/kerran_banker_service_good_1_hail_gf_17a9b8f6.mp3", "Are you interested in qualifying for an equity line of coin on your livestock?", "shrug", 3439094459, 1391151871, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/banker/kerran_banker_service_good_1_aoi_gf_b9b04d38.mp3", "Next person in line please!", "beckon", 2615818139, 75141652, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/banker/kerran_banker_service_good_1_hail_gf_c9bf1d41.mp3", "Welcome to the bank, citizen. How can I assist you?", "bow", 3423859777, 4071373412, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/banker/kerran_banker_service_good_1_hail_gf_ca4ce94.mp3", "Greetings, would you like to open an account or is there something else I can help with?", "hello", 2726817868, 3500816729, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/service/banker/kerran_banker_service_good_2_hail_gf_1772a0df.mp3", "Has anyone told you about our new retirement savings programs?", "nod", 1009693530, 937887980, Spawn)
	else
	end

end

