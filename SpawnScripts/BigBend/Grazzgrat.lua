--[[
	Script Name		: SpawnScripts/BigBend/Grazzgrat.lua
	Script Purpose	: Grazzgrat
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog7(NPC, Spawn)
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This place is no good.  It's too dry, too crowded, and there's nothing to hunt but rats.  No, this place is not so good as Grazzgrat's swamp.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_000.mp3", 3132446091, 3207337666)
	Dialog.AddOption("If you don't like it here, why don't you go back to your swamp?", "Dialog3")
	Dialog.AddOption("What?!  Trolls don't whine!  Suck it up and deal with it!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh, you think you smarter than Grazzgrat?  Well, you not so smart because Grazzgrat would be in swamp now if he could.  But swamp was destroyed so long ago and Grazzgrat forced to live in dry, crowded place until he find new swamp.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_001.mp3", 3422662472, 3860203232)
	Dialog.AddOption("What happened to your swamp? ", "Dialog5")
	Dialog.AddOption("Well, you're not the only one without a home, so stop whining.", "Dialog7")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The swamp was destroyed in the Shattering.  Great fire rocks fell from the sky and boiled the swamp.  Everything died; Grazzgrat almost died.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_002.mp3", 410920209, 1417413171)
	Dialog.AddOption("How did you manage to survive?", "Dialog6")
	Dialog.AddOption("Where was this swamp of yours?", "Dialog2")
	Dialog.AddOption("You're alive!  Be grateful for that and move on! ")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahahaha!  Grazzgrat is tougher than little snakes, lizards, and frogloks.  The boiling water only burned and blistered Grazzgrat while he swam to muddy shore.  That boiled too, the mud, but it was not so bad for Grazzgrat.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_003.mp3", 890099441, 3631110016)
	Dialog.AddOption("Where was this swamp of yours?", "Dialog2")
	Dialog.AddOption("So that's what happened to the frogloks?", "Dialog1")
	Dialog.AddOption("So you survived.  That should be more than enough for a troll.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Swamp was to the south and ran deep for miles and miles.  It had lots of things to feed Grazzgrat, lots of frogloks for Grazzgrat and Grazzgrat's many children to eat, and lots of ruined rocks to make Grazzgrat's home.  Yes, that swamp was a good swamp.  Grazzgrat is... disappointed now that it's gone.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_004.mp3", 1788699406, 2954206658)
	Dialog.AddOption("What happened to the frogloks on the swamp?", "Dialog1")
	Dialog.AddOption("So there were other trolls in your swamp?", "Dialog4")
	Dialog.AddOption("A troll reminiscing?!  HA!  Now I've seen everything.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Grazzgrat only know what he heard and smelled.  They screamed so loud in pain and fear and Grazzgrat could smell their skins melting in the swamp.  It was terrible and sad thing the frogloks' boiling alive, not that they died, but that Grazzgrat could not enjoy the slaughter.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_005.mp3", 3794657795, 3653560387)
	Dialog.AddOption("What about other trolls?  Or were you alone in your swamp?", "Dialog5")
	Dialog.AddOption("So the frogloks died?  Good riddance, is what I say!")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, many brothers, sisters and children of Grazzgrat hunted frogloks in the swamp.  They were pleased with the swamp, as Grazzgrat was pleased, but no more.  They are probably dead, boiled or crushed by fire rocks from the sky.")
	Dialog.AddVoiceover("voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_006.mp3", 1556653377, 944269835)
	Dialog.AddOption("It could have been worse; at least you're still alive.  Goodbye.")
	Dialog.Start()
end

