--[[
	Script Name	: SpawnScripts/GreaterFaydark/ascorchedskeletalwizard.lua
	Script Purpose	: a scorched skeletal wizard 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "voiceover/english/exp03_combatvo/skeleton_greater_faydark_spires_1/ft/_exp03/skeleton/skeleton_greater_faydark_spires_1_battle_56eb06a6.mp3", "When the spires come back to life, so shall I.", "", 2290356808, 2998409398, Spawn)
end

