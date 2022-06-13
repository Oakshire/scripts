--[[
    Script Name    : SpawnScripts/QeynosHarbor/ArrelSilvertongue.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 12:06:14
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail nothing!  Don't speak that foolishness to me!  I can tell there is more to you than just adventuring. Ready to put your skills to a real test?")
	Dialog.AddVoiceover("voiceover/english/arrell_silvertongue/qey_harbor/arrellsilvertongue001.mp3",1721901739, 3238691394)
	Dialog.AddOption("Not today.  Thanks.")
	Dialog.Start()
end


function respawn(NPC)
	spawn(NPC)
end