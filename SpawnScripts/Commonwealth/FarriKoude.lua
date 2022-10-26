--[[
    Script Name    : SpawnScripts/Commonwealth/FarriKoude.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.25 01:10:43
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
	Dialog.AddDialog("I'm sorry, until you have chosen a specialty in your craft I do not have any work orders for you.  Come see me when you're more practiced in your trade.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1038.mp3", 0, 0)
	Dialog.AddOption("I'll work towards that end then.")
	Dialog.Start()
end