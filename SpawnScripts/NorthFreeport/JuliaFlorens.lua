--[[
    Script Name    : SpawnScripts/NorthFreeport/JuliaFlorens.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 04:06:22
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
	Dialog.AddDialog("Come in, please come in.  Welcome to the Jade Tiger's Den.  I'm Hostess Julia.   Perhaps you came to try a Jade Tiger cocktail?")
	Dialog.AddVoiceover("voiceover/english/julia_florens/fprt_north/mer_juliaflorens.mp3", 381228226, 4204129286)
	Dialog.AddOption("What's a Jade Tiger cocktail?", "Dialog2")
	Dialog.AddOption("Argh!  Leave me be....")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Honey, if you have to ask it's not for you.")
	Dialog.AddVoiceover("voiceover/english/julia_florens/fprt_north/mer_juliaflorens000.mp3", 437471813, 724586510)
	Dialog.AddOption("Right.")
	Dialog.Start()
end

