--[[
    Script Name    : SpawnScripts/NorthQeynos/CouncilorVemerik.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 05:10:30
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("And a good day to you, my friend!  Nothing's more enjoyable than people watching.  For instance, there's an amusing lad, that fellow there seems to be in a rush, and take a gander at that lady ... er ... the point is, nimble eyes are just as important as nimble fingers. You never know what you might see!")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik000.mp3", 1163089685, 181252460)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddOption("I've got more important things to do than watch people. Good day.")
	Dialog.AddOption("I'll keep that in mind...")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end