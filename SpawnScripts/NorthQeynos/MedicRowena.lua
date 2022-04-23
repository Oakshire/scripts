--[[
	Script Name		: SpawnScripts/NorthQeynos/MedicRowena.lua
	Script Purpose	: Medic Rowena
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
	Dialog.AddDialog("Rodcet's blessings upon you. How may the Temple of Life assist you today?")
	Dialog.AddVoiceover("voiceover/english/medic_rowena/qey_north/medicrowena000.mp3", 59000523, 1158708704)
	Dialog.AddOption("Nothing at the moment.")
	Dialog.Start()
end