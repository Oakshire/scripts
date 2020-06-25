--[[
	Script Name	: SpawnScripts/SouthQeynos/FredrickLosce.lua
	Script Purpose	: Fredrick Losce 
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

	PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/100_qst_fredrick_losce_multhail1_39997e53.mp3", "I'm sorry friend. I thought you were someone else.", "", 2011619923, 2423962881, Spawn)
end

