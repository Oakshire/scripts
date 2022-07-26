--[[
	Script Name		: SpawnScripts/ScaleYard/BankerIzark.lua
	Script Purpose	: Banker Izark
	Script Author	: torsten
	Script Date		: 2022.07.25
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
	Dialog.AddDialog("I'm very busy and can't talk to you right now.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0)
	Dialog.AddOption("Fine! I'll find someone else to talk to, then!")
	Dialog.Start()
end

