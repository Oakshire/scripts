--[[
	Script Name	: SpawnScripts/SouthQeynos/TristanGalliway.lua
	Script Purpose	: Tristan Galliway 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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
	Dialog.AddDialog("Do I know you?")
	Dialog.AddVoiceover("voiceover/english/optional5/tristan_galliway/qey_south/tristangalliway000.mp3", 1051413050, 368824776)
	Dialog.AddOption("No, I just dropped in to relax a bit, if you don't mind. ")
	Dialog.Start()
end
