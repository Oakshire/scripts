--[[
	Script Name		: SpawnScripts/NorthQeynos/Knight-CaptainSteelgaze.lua
	Script Purpose	: Knight-Captain Steelgaze
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
		PlayFlavor(NPC, "voiceover/english/knight-captain_steelgaze/qey_north/100_soc_dwarf_guard_officer_steelgaze_no_ebc9f4e4.mp3", "Hail, citizen of Qeynos.  The Qeynos Guard protects!", "", 384374981, 537643347, Spawn, 0)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: We Pruned the Hedges")
	Dialog.AddOption("I would like the writ: It's Just Your Imagination")
	Dialog.AddOption("I would like the writ: Unspeakable Malice")
	Dialog.AddOption("I would like the writ: It Is the Soldier")
	Dialog.AddOption("I would like the writ: Pillars of Perseverance")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end
