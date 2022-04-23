--[[
	Script Name		: SpawnScripts/NorthQeynos/NoelleDering.lua
	Script Purpose	: Noelle Dering
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
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings! I welcome you to Irontoes East! Please speak with Harold or Gretta if you need help!")
	Dialog.AddVoiceover("voiceover/english/noelle_dering/qey_north/noelledering.mp3", 2170111717, 1186191258)
	Dialog.AddOption("Thanks, I'll keep that in mind")
	Dialog.Start()
end