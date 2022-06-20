--[[
    Script Name    : SpawnScripts/NorthFreeport/ModiniteZVol.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:16
    Script Purpose : 
                   : 
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
	Dialog.AddDialog("Only through intense suffering can one be purified of all weaknesses and frailty.  The Threshing separates the weak willed from the mighty in faith.  Pray that you are not found wanting when your personal Threshing comes...")
	Dialog.AddVoiceover("voiceover/english/modinite_z_vol/fprt_north/modinitezvol001.mp3", 285079217, 2983261764)
	Dialog.AddOption("I'll take your advice on it. ")
	Dialog.Start()
end
