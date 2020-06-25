--[[
	Script Name	: SpawnScripts/Darklight/GuardDonidas.lua
	Script Purpose	: Guard Donidas 
	Script Author	: John Adams
	Script Date	: 2009.02.01
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen.  In Freeport, the Overlord's word is law!", "scold", 1744928325, 2718395831, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3265760930, 1055342916, Spawn)
	else
	end

end

