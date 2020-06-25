--[[
	Script Name	: SpawnScripts/Castleview/Fevalin.lua
	Script Purpose	: Fevalin <Provisioner>
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", "", "", 0, 0, Spawn)
end

