--[[
	Script Name		: SpawnScripts/NorthQeynos/DawsonMagnificent.lua
	Script Purpose	: Dawson Magnificent
	Script Author	: Dorbin
	Script Date		: 2022.04.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "Hello! I'm Dawson Magnificent, the renowned street performer!  I'm known throughout the land for my troupe.  My brother Gray is to my left, and to my right is our lovely assistant Andrea!", "", 0, 0, Spawn, 0)
end
