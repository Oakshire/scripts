--[[
	Script Name		: SpawnScripts/BigBend/CrantiktheCrazed.lua
	Script Purpose	: Crantik the Crazed
	Script Author	: torsten
	Script Date		: 2022.07.13
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
	Dialog.AddDialog("Up is down and down is up, yet both are still sideways!  Hoooooooo hee hee haaaaaaaa!")
	Dialog.AddVoiceover("voiceover/english/crantik_the_crazed/fprt_hood1/qst_crantikthecrazed.mp3", 1553641466, 3781649488)
	Dialog.AddOption("Um, ya....right....")
	Dialog.Start()
end

