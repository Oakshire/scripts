--[[
	Script Name		: SpawnScripts/NorthQeynos/BleogHealbog.lua
	Script Purpose	: Bleog Healbog
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
Dialog3(NPC, Spawn)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there adventurer, what brings you to the Temple of Life this fine day?")
	Dialog.AddOption("Just looking around.")
	Dialog.Start()
end