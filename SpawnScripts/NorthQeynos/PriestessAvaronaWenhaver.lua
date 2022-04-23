--[[
	Script Name		: SpawnScripts/NorthQeynos/PriestessAlloraReed.lua
	Script Purpose	: Priestess Allora Reed
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
	Dialog.AddDialog("Hail, adventurer.  If it is solace you desire, you will find it within these walls.")
	Dialog.AddVoiceover("priestess_avarona_wenhaver/_exp04/epic/paladin/priestessavaronawenhaver001.mp3", 4115417806, 3831153940)
	Dialog.AddOption("A little solace will be well received.")
	Dialog.Start()
end