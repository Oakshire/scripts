--[[
	Script Name		: SpawnScripts/ScaleYard/NithaskSyrthiss.lua
	Script Purpose	: Nithask Syrthiss
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog11(NPC, Spawn)
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We will not fall victim to imprisonment again! History, as it has shown, will not allow our fate to be sealed in mediocrity.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_000.mp3", 2035652250, 4149115810)
	Dialog.AddOption("What are you talking about?", "Dialog4")
	Dialog.AddOption("I'm not interested in your rhetoric!")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I speak of inevitable vengeance and the rise of a new empire.  The Shattered lands will one day be ruled by a formidable and apt force.  It is our destiny.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_001.mp3", 1663681837, 1174355350)
	Dialog.AddOption("What do you know that I don't?", "Dialog5")
	Dialog.AddOption("They will, but that force will not be yours, fool!")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I know the history of this world and the forces responsible for the freedom of our race in many centuries past are still with us, ever watching, ever waiting for our time to rise.  The Green Mist will descend again!")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_002.mp3", 3033639880, 3068296967)
	Dialog.AddOption("What's the Green Mist?", "Dialog9")
	Dialog.AddOption("Oh great, another doom-sayer.  I don't have time for this.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The iksar were once a race enslaved by the terrible and immensely powerful Shissar Empire. After a millennium of enslavement, we were suddenly blessed by the descent of the Green Mist. We thought the Green Mist was a blessing from the patron Thule, but recent occurrences have proved this great blessing has not been entirely extinguished.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_003.mp3", 1583372838, 1119979594)
	Dialog.AddOption("What did the Green Mist do for you, exactly?", "Dialog7")
	Dialog.AddOption("What recent occurrences?", "Dialog12")
	Dialog.AddOption("Bed-time stories don't interest me.  Good bye.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It freed us from our captors!  The most powerful mortal race to ever exist upon the face of this world was eradicated in mere hours.  We left their blistered bodies to rot in the jungles while we rose to become the most powerful empire in Kunark's history.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_004.mp3", 1279006869, 1520135252)
	Dialog.AddOption("That was thousands of years ago!  Why do you think the mist has suddenly returned?", "Dialog12")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("During the Age of War, the Rallosian Empire had a second coming and threatened to cover the whole of the world in destruction and death, which they were very successful at. It wasn't until the fronts had reached the gates of Qeynos that the tides were turned with the return of the mists.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_005.mp3", 2951522699, 75020216)
	Dialog.AddOption("What?!  The Green Mist came back?!", "Dialog6")
	Dialog.AddOption("Why do you think the mists would help you?", "Dialog7")
	Dialog.AddOption("Why would the mists come back to save Qeynos?", "Dialog8")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed, they did.  They descended upon the Rallosian Armies when it seemed that their victory was inevitable.  Upon the dawn of battle, the Qeynosian armies were not met with the hordes of ogres, orcs and goblinoids that had ravaged their territories.  Instead, they were met with a field of blistered corpses.  ")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_006.mp3", 3654295321, 3073054012)
	Dialog.AddOption("Wait, how do you know the mists did this?", "Dialog3")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("One of the greatest armies this world has ever seen suddenly fell dead upon the eve of their victory.  Their bodies were covered in the festering sores and blisters consistent with the affliction of the mist.  There is no other logical explanation.  The power of the mist is still with us, and it will be our key to ascension!")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_007.mp3", 2705603054, 3817678111)
	Dialog.AddOption("But the gods are dead.  How could the mists return?", "Dialog10")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You raise a good point, but one that I refuted in my telling of this history. The mist is obviously not a force conjured by the gods, but it is something more mysterious; perhaps it is a sentient being beyond the realms of the mortal and divine, or perhaps it is beyond such designations.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_008.mp3", 3299299562, 2342822075)
	Dialog.AddOption("So you think that this mist creature is on your side?", "Dialog1")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hisssss!  Do not speak such disrespect!  The mist cannot be willed and is not so petty in the choosing of sides.  It is the executor of justice and a servant of fate!  This mist will come again and justice will be delivered once more.  There is no escape from it!  Embrace the inevitability of our rise!")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_009.mp3", 2371406226, 2886166849)
	Dialog.AddOption("And you're so certain that the mists won't destroy your empire?", "Dialog2")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am only certain of our fate and what history has shown.  The mists are favorable to us; why, I do not know.  Unlike the empires past, the second rising of our imperial reign will not be weak or foolishly arrogant!  It will serve in respect to the greater powers of this existence that can be neither fathomed nor controlled!")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_010.mp3", 475060493, 1057785504)
	Dialog.AddOption("You're a bit hopeful, I think, but your story was informative nonetheless.  Good bye.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Green Mist is not something fully understood by mortal minds.  Its motives and its purpose are beyond our comprehension.  I believe that the mists were used to destroy a war machine that had overstepped its boundaries of arrogance with senseless destruction.  The Rallosian Army earned their fate.")
	Dialog.AddVoiceover("voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_011.mp3", 3038238130, 30476934)
	Dialog.AddOption("You're so sure that the mists returned?")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

