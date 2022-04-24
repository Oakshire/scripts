--[[
	Script Name	: SpawnScripts/NorthQeynos/ThardrinSteeleye.lua
	Script Purpose	: Thardrin Steeleye 
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3", "Harrumph.  Can't ye see I'm busy?  Go pester someone else!", "", 0, 0, Spawn)
end

