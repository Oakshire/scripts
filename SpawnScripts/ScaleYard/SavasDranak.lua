--[[
	Script Name		: SpawnScripts/ScaleYard/SavasDranak.lua
	Script Purpose	: Savas Dranak
	Script Author	: torsten
	Script Date		: 2022.07.25
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
	Dialog.AddDialog("It is a shame this one didn't do what he was told.  He was my favorite thrall too.")
	Dialog.AddVoiceover("voiceover/english/savas_dranak/fprt_hood06/savasdranak000.mp3", 312427882, 4132285907)
	Dialog.AddOption("I don't want to see how you treat your least favorite.  ")
	Dialog.Start()
end

