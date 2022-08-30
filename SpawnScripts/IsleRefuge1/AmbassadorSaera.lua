--[[
    Script Name    : SpawnScripts/IsleRefuge1/AmbassadorSaera.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 03:08:04
    Script Purpose : Just applying parsed dialog here.  Obvisouly needs more.
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
	Dialog.AddDialog("I have been instructed to pass people of your... stature, to T'Kirr, the Ambassador of Freeport. I suggest that you go speak to him, as you will find Freeport a much more fitting environment for you to live in.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera007.mp3", 2300745754, 3241256270)
	Dialog.AddOption("I don't believe I was speaking to you anyway...")
	Dialog.Start()
end