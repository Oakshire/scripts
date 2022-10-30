--[[
    Script Name    : SpawnScripts/Truthbringer/RocarSayerar.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 06:10:57
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
Dialog2(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A Woodworker is rarely without demand for work.  We have several work orders which we could use some help with. If you're willing, just tell me what type of order you'd be able to assist with. When you're ready to begin, just take the invoice from the work order clipboard or work order desk.")
	Dialog.AddOption("I would like a tier three woodworker work order.")
	Dialog.AddOption("I am not really interested in a job right now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry, until you have chosen a specialty in your craft I do not have any work orders for you.  Come see me when you're more practiced in your trade.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", 0, 0)
	Dialog.AddOption("I'll work towards that end then.")
	Dialog.Start()
end