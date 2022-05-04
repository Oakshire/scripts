--[[
    Script Name    : SpawnScripts/SouthFreeport/AldreviaMetilla.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.04 04:05:25
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
	Dialog.AddDialog("A burglar?!  Oh my!  Where?  In my inn?  Have you called for the guard?")
	Dialog.AddVoiceover("voiceover/english/optional1/flavia_metilla/fprt_south/flaviametilla002.mp3", 1566897025, 4066912756)
	Dialog.AddOption("No.  There's no burglar.  I'm looking for a man with a leather cap.", "Dialog5")
	Dialog.AddOption("...Sure.  I'll go call the guard. ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, hello there.  Have a seat and make yourself comfortable.")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/flaviametilla000.mp3", 4188461435, 706009708)
	Dialog.AddOption("I'm looking for someone named Pythus.", "Dialog4")
	Dialog.AddOption("I was just leaving.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, hello there.  Have a seat and make yourself comfortable.")
	Dialog.AddVoiceover("voiceover/english/optional1/kaeso_polluvius/fprt_south/flaviametilla000.mp3", 4188461435, 706009708)
	Dialog.AddOption("I was just leaving.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sure, I have pie.  Cherry, blueberry, and apple.  Can I get you a slice?")
	Dialog.AddVoiceover("voiceover/english/optional1/flavia_metilla/fprt_south/flaviametilla001.mp3", 669839309, 2607058274)
	Dialog.AddOption("No, not pie; Pythus. He's a man; a burglar.", "Dialog1")
	Dialog.AddOption("Nevermind.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A leather cap?  I don't sell them, but I know a man who has one.  His name is Pythus.  Maybe he'll sell you his.  I saw him heading towards Crossroad out in the Commonlands, on the Deathfist Highway.  I suppose he lives out there.  If you see him, tell him I said hello!")
	Dialog.AddVoiceover("voiceover/english/optional1/flavia_metilla/fprt_south/flaviametilla003.mp3", 577465053, 3798308392)
	Dialog.AddOption("Oh, I will.")
	Dialog.Start()
end

