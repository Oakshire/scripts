--[[
	Script Name		: SpawnScripts/NorthQeynos/JoIronshield.lua
	Script Purpose	: Jo Ironshield
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can I help you?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0)
	Dialog.AddOption("Not right now, thanks.")
	Dialog.Start()
end
