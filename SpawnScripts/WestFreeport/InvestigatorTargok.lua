--[[
    Script Name    : SpawnScripts/WestFreeport/InvestigatorTargok.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.17 08:02:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
 Dialog2(NPC, Spawn)
 end

function respawn(NPC)
	spawn(NPC)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No!  The law is the law!  You're getting some justice handed to you!  Unless ... unless you want to volunteer to pay off your crime!")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok007.mp3", 1582785896, 3481343551)
	Dialog.AddOption("But I didn't do anything!  I keep telling you!!!", "Dialog12")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You heard me!  We're on to you.  Matter of fact, we have been for a while now.")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok001.mp3", 766052591, 2960062405)
	Dialog.AddOption("What are you talking about?", "Dialog3")
	Dialog.AddOption("I don't have time for this.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Uh oh! What's this? Acting like you don't know what's going on, are you? You think we don't know what you're doing?")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok002.mp3", 2843141554, 1688456030)
	Dialog.AddOption("What on Norrath do you think I'm doing?", "Dialog9")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Glad to hear that, glad indeed.  Then it's off to the Nektulos Forest for you!  You can pay off your crime by gathering materials we need.")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok009.mp3", 2339658158, 3264392142)
	Dialog.AddOption("Sure, anything, anything!  I'll do it!  What do you need?", "Dialog6")
	Dialog.AddOption("Where is the Nektulos Forest?", "Dialog11")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Is that so?  Are you saying I'm wrong?  Think before you speak!  Are you saying that me, an officer of Lucan's law, is wrong?")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok004.mp3", 4045576051, 2837242958)
	Dialog.AddOption("Yes, that's exactly what I'm saying!", "Dialog10")
	Dialog.AddOption("No, I didn't say it like that!", "Dialog7")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We need bat and bear hides. Not any bat or bear will do, though. We want skins from those fiery bats and owl bears. And another thing, if you don't want to go to jail, make sure those hides are in perfect shape when you bring them back. And if you think of running, we'll send someone after you, got it?")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok012.mp3", 536264956, 1505479000)
	Dialog.AddOption("Loud and clear.  I'll be sure to bring them back!")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("HA!  A confession!  Straight from your mouth!  That's it... you're going to jail right now!")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok006.mp3", 1836200919, 626311744)
	Dialog.AddOption("Wait, wait, wait!  Is there anything I can do to get out if this?", "Dialog1")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("For a criminal in a lot of trouble, you sure do ask a lot of questions.  The Nektulos forest is swarming with all kinds of dangerous buggers.  Just stay away from those weird glowing lights and you'll be safe.  Lots of volunteers never make it past them.  But you're different, aren't you?  AREN'T YOU?!")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok011.mp3", 3987022732, 2141176151)
	Dialog.AddOption("Yeah, yeah!  I'm different.  What am I volunteering for?", "Dialog6")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("HA!  So, you admit you're doing something then, do you?  I knew it wouldn't take you long to crack!")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok003.mp3", 4147111049, 2649159573)
	Dialog.AddOption("I didn't say anything like that!", "Dialog5")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's it! You're coming with me! You're charged with defaming an officer's honor! Call me a liar, will you? You're looking at some Happy Time in prison, you are!")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok005.mp3", 2283588053, 806001492)
	Dialog.AddOption("Slow down there!  Is there... uh... anything I can do to not go to jail?", "Dialog1")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Playing stupid again, are you?  Well, come to think of it, you do look a bit dense.  You can find your way into the Nektulos forest to the northwest of the Commonlands.  Gotta walk through that gated-off cave to get in.")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok010.mp3", 4291374616, 3631744601)
	Dialog.AddOption("Why is it gated off?  And what's inside", "Dialog8")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Back to that, are we?  You had one chance to save your worthless hide, and you blew --")
	Dialog.AddVoiceover("voiceover/english/investigator_targok/fprt_west/qst_investigator_targok008.mp3", 2436331828, 3650728066)
	Dialog.AddOption("OKAY!!!  Okay, I volunteer!  I'll do what needs to be done!", "Dialog4")
	Dialog.Start()
end

