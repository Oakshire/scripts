--[[
	Script Name		: SpawnScripts/BeggarsCourt/Maecenus.lua
	Script Purpose	: Maecenus
	Script Author	: torsten
	Script Date		: 2022.07.18
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
	Dialog.AddDialog("I don't know you. Shove off.")
	Dialog.AddVoiceover("voiceover/english/maecenus/fprt_hood04/maecenus000.mp3", 2491712536, 707778820)
	Dialog.AddOption("I don't know you either.")
	Dialog.Start()
end

