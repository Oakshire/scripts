--[[
	Script Name	: SpawnScripts/QueensColony/Shirra.lua
	Script Purpose	: Shirra <Combat Arts>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1035.mp3", "Upgrade your combat arts here!", "", 0, 0, Spawn)
end