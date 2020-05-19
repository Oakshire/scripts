--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/GingerSnaps.lua
	Script Purpose	: Ginger Snaps <Frostfell Fanatic>
	Script Author	: Cynnar
	Script Date	: 2019.10.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
end

