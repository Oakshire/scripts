--[[
	Script Name		: SpawnScripts/NorthQeynos/KirianaNorthsky.lua
	Script Purpose	: Kiriana Northsky
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
	Dialog.AddDialog("What brings you to the Temple of Life, adventurer?")
	Dialog.AddVoiceover("kiriana_northsky/qey_north/trainer_mystic001.mp3", 4181071687, 169083201)
	Dialog.AddOption("Just looking around.")
	Dialog.Start()
end
