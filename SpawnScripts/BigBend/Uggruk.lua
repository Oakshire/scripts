--[[
	Script Name		: SpawnScripts/BigBend/Uggruk.lua
	Script Purpose	: Uggruk
	Script Author	: torsten
	Script Date		: 2022.07.13
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
	Dialog.AddDialog("I am no city guide. Find your idle chat from some runt race, not from a son of Oggok. Begone before you find my rage!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", 0, 0)
	Dialog.AddOption("Calm down big fellow. I am leaving.")
	Dialog.Start()
end

