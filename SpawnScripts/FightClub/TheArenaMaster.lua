--[[
    Script Name    : SpawnScripts/FightClub/TheArenaMaster.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 01:10:31
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
Dialog6(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, accidents do happen around here.  Don't let it happen again!  Are you ready for your next opponent?")
	Dialog.AddVoiceover("the_arena_master/qey_ph_3r03/betrayal_guard_pit_master003.mp3", 3841377725, 1854500666)
	Dialog.AddOption("I'm ready!")
	Dialog.AddOption("Not yet.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't tell me you slipped again!  Who are you and why are you here?")
	Dialog.AddVoiceover("the_arena_master/qey_ph_3r03/betrayal_guard_pit_master004.mp3", 1350475812, 3113963203)
	Dialog.AddOption("You really need to remove this rug.  I am telling you again that I tripped when my opponent yielded.  Maybe I am too excited to serve the Qeynos Guard?", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you doing?  Your opponent yielded and you continued.")
	Dialog.AddVoiceover("the_arena_master/qey_ph_3r03/betrayal_guard_pit_master002.mp3", 361170323, 1716197615)
	Dialog.AddOption("I slipped, honestly.", "Dialog1")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, the rug is a bit shaggy.  Excited to serve the Guard, huh?  That is good to hear, but you need to channel your excitement better.  We haven't had two accidents in the same day since last Firstchill.  Are you ready for your final challenge?")
	Dialog.AddVoiceover("the_arena_master/qey_ph_3r03/betrayal_guard_pit_master005.mp3", 301674172, 1413618860)
	Dialog.AddOption("I'm ready!")
	Dialog.AddOption("Not Yet.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That does it, you're a spy!  I should have never been so trusting.  Prepare to meet the master, your fate has been sealed!")
	Dialog.AddVoiceover("the_arena_master/qey_ph_3r03/betrayal_guard_pit_master006.mp3", 3214826474, 2310689313)
	Dialog.AddOption("Join your friends!")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Practice Arena!  Here we can hone our skills in preparation to protect our fair city.  There is only one rule:  When your opponent yields, the fight is over.  Are you ready for your first challenge?")
	Dialog.AddVoiceover("the_arena_master/qey_ph_3r03/betrayal_guard_pit_master001.mp3", 3143191016, 2620856064)
	Dialog.AddOption("I'm ready!")
	Dialog.AddOption("Not yet.")
	Dialog.Start()
end
