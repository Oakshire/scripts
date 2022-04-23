--[[
	Script Name		: SpawnScripts/NorthQeynos/ProphetBainynFairwind.lua
	Script Purpose	: Prophet Bainyn Fairwind
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "I'm sorry, I have nothing I can teach you at this time.", "no", 0, 0, Spawn, 0)
end
