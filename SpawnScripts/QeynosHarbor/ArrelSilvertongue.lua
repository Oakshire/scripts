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
    if GetLevel(Spawn)==9 and GetClass(Spawn)==31 then
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail nothing!  Don't speak that foolishness to me!  I can tell there is more to you than just adventuring. Ready to put your skills to a real test?")
	Dialog.AddVoiceover("voiceover/english/arrell_silvertongue/qey_harbor/arrellsilvertongue001.mp3",1721901739, 3238691394)
	Dialog.AddOption("Not today.  Thanks.")
	Dialog.Start()
	else
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh bother!  Is it really going to start hailing?  I do so hate ill weather...")
--	Dialog.AddVoiceover("voiceover/english/arrell_silvertongue/qey_harbor/arrellsilvertongue000.mp3",1721901739, 3238691394)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3","","sigh",0,0,Spawn)
	Dialog.AddOption("No, not that kind of hail!")
	Dialog.Start()	    
end
end

function respawn(NPC)
	spawn(NPC)
end