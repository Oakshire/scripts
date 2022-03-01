--[[
	Script Name	: SpawnScripts/Darklight/aBriarstoneslayer.lua
	Script Purpose	: a Briarstone slayer 
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

	PlayFlavor(NPC, "voiceover/english/skeleton_thexian/ft/skeleton/skeleton_thexian_1_halfhealth_15c99541.mp3", "Others will take my place.", "", 2052061812, 1312269385, Spawn)
end

