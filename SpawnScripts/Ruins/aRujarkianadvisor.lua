--[[
	Script Name	: SpawnScripts/Ruins/aRujarkianadvisor.lua
	Script Purpose	: a Rujarkian advisor 
	Script Author	: John Adams
	Script Date	: 2009.08.10
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

	PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_victory_e0dd7b0.mp3", "Don't stand there! Kill the rest of them.", "", 1707510858, 1061114222, Spawn)
end

