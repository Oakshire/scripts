--[[
	Script Name		: SpawnScripts/BeggarsCourt/BanwynSympronian.lua
	Script Purpose	: Banwyn Sympronian
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
	Dialog.AddDialog("I'm busy with a patron. Don't bother me.")
	Dialog.AddVoiceover("voiceover/english/optional1/banwyn_sympronian/fprt_hood04/std_banwyn_sympronian.mp3", 3405002036, 270659243)
	Dialog.AddOption("I'll take my business elsewhere, then.")
	Dialog.Start()
end

