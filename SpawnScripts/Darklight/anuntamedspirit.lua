--[[
	Script Name	: SpawnScripts/Darklight/anuntamedspirit.lua
	Script Purpose	: an untamed spirit 
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

	PlayFlavor(NPC, "voiceover/english/ghost_darkelf_base_1/ft/ghost/ghost_darkelf_base_1_1_death_gf_b5958785.mp3", "Hold them and I'll return with others like us!", "", 3769472925, 2964757475, Spawn)
end

