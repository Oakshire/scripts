--[[
	Script Name	: SpawnScripts/NorthQeynos/BakerVoleen.lua
	Script Purpose	: Baker Voleen <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/baker_voleen/qey_north/100_merchant_voleen_baker_g4_multhail_f259c855.mp3", "Unless you want to buy a treat, be on your way, friend.", "", 403489438, 3022554581, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_1e9a743c.mp3", "Please mind the plates, they're very hot.", "scold", 1075794847, 2019936086, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 1646021457, 4149179615, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1048257184, 2248522628, Spawn)
	else
	end

end

