--[[
    Script Name    : SpawnScripts/Antonica/HistorianRotpaw.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.17 05:05:40
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
	Dialog.AddDialog("What is it you need?  What can be so important as to interrupt my day?")
	Dialog.AddVoiceover("voiceover/english/historian_rotpaw/antonica/historianrotpaw000.mp3", 3279676330, 2004493668)
	Dialog.AddOption("I will leave you alone.")
	Dialog.Start()
end