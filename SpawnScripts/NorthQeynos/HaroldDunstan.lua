--[[
	Script Name		: SpawnScripts/NorthQeynos/HaroldDunstan.lua
	Script Purpose	: Harold Dunstan
	Script Author	: Dorbin
	Script Date		: 2022.04.22
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
SetTarget(NPC,Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail traveler.  Can I offer you a drink to quench your thirst?")
	Dialog.AddVoiceover("voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", 1944438004, 3707588738)
	Dialog.AddOption("I am not very thirsty right now. ")
	Dialog.Start()
end


