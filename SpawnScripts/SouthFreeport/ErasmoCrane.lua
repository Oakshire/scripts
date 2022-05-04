--[[
	Script Name		: SpawnScripts/SouthFreeport/ErasmoCrane.lua
	Script Purpose	: Erasmo Crane
	Script Author	: Dorbin
	Script Date		: 2022.05.04
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
	Dialog.AddDialog("Hello, citizen. I'd love to chat, but I'm busy getting my ship ready for a short fishing trip.  If you'll excuse me...")
	Dialog.AddVoiceover("voiceover/english/erasmo_crane/fprt_south/erasmocrane000.mp3", 895369696, 3352176574)
	Dialog.AddOption("You are excused.  ")
	Dialog.Start()
end
