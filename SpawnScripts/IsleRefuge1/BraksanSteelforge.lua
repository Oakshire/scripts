--[[
    Script Name    : SpawnScripts/IsleRefuge1/BraksanSteelforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:38
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them.")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge001.mp3", 3328433629, 3720216759)
	Dialog.AddOption("I will leave you to your work.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end