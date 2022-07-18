--[[
	Script Name		: SpawnScripts/BeggarsCourt/RiliusShadowsiege.lua
	Script Purpose	: Rilius Shadowsiege
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog3(NPC, Spawn)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Watch yourself, kid.  You never know what unsavory creatures might lurk in the shadows of this city.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_000.mp3", 2750438484, 4134837776)
	Dialog.AddOption("What are you talking about?", "Dialog10")
	Dialog.AddOption("I'll keep that in mind, old man.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Come here, kid, and listen close.  I speak about the vermin ratonga.  They're an uncomfortably mysterious lot and they aren't to be trusted.  Do yourself a favor and don't get involved with them.  You don't want to play any part in their plots, trust me.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_001.mp3", 3721945383, 1106683272)
	Dialog.AddOption("What are you talking about?!", "Dialog6")
	Dialog.AddOption("I don't have time for the paranoid ravings of an old man.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Everything, kid, everything.  They've been here a mere twenty years and we still don't know anything about them!  I mean, no one even knows where they come from!")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_002.mp3", 3127368799, 468607430)
	Dialog.AddOption("If they really are so mysterious, why are they allowed to be part of the city?", "Dialog8")
	Dialog.AddOption("That's not something for me to worry about right now.  Good bye.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Because the Overlord allows it, and don't think for a minute that I would dare presume to know the Overlord's state of mind again.  Oh yes, I questioned his wisdom once but never again.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_003.mp3", 4151950988, 1655159617)
	Dialog.AddOption("What happened to you?", "Dialog7")
	Dialog.AddOption("So, you're a traitor.  Why am I talking to you, then?!  Good bye!")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, not much; just a decade's long incarceration with a troll for a cell mate and the stripping of my family's citizenship and welfare.  But hey, at least I've still got my health.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_004.mp3", 1930330881, 3902860995)
	Dialog.AddOption("So, you questioned the Overlord himself?!", "Dialog9")
	Dialog.AddOption("Well, you're obviously insane from your incarceration, so I'll just be going now.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Of course not!  I would be dead if I had been so foolish!  No, I've never had the pleasure of a personal audience with the Overlord.  My commanding officer overheard me harping about the ratonga infestation while I was off duty.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_008.mp3", 1248757604, 2236898370)
	Dialog.AddOption("So, you were there when the ratonga first came?", "Dialog2")
	Dialog.AddOption("Socializing with ex-cons is not the best way to prove myself to the city...")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, I was there.  I remember it like it was yesterday.  I was on the night patrol when they first came.  It was shortly after dusk when the first of them slithered out of the sewers.  It was just a few of them at first...")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_005.mp3", 2514732529, 3581140502)
	Dialog.AddOption("Well, go on, spit it out!  Tell me what happened!", "Dialog1")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The city patrol was doubled and put on alert, but it was too late.  In a matter of minutes the ratonga \"ambassadors\" had already made their way to the doorstep of the Foci.  We were ordered to remain on patrol and guard the sewer entrances, but there were no more sightings.  It was quiet for a few days after that. The patrol remained on alert and we all worked triple shifts, but the damage was done.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_006.mp3", 3494492671, 4049441307)
	Dialog.AddOption("So the Foci killed them?", "Dialog5")
	Dialog.AddOption("Fascinating, really, but I think I've heard enough.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What a logical conclusion that would be, eh?  But no, she did not kill them.  Apparently, she conceded to the vermin ambassadors' requests and an audience was arranged with the Overlord.  Official orders welcoming the ratonga race into the city's populace were posted and before the ink could dry, the streets were flooded with the vermin, as if they had been there, invisible, all along.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_009.mp3", 799000226, 2029965090)
	Dialog.AddOption("Well, they obviously have some potential that's useful to the Overlord.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As a matter of fact, I think they have too much potential, if you know what I mean.  No, I don't like them being here, not one bit and if you know what's good for you, you'll grow an extra pair of eyes in the back of your head, because they're everywhere.")
	Dialog.AddVoiceover("voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_010.mp3", 3904436608, 1531693934)
	Dialog.AddOption("I'll be sure to keep all of this in mind, thank you.")
	Dialog.Start()
end



