--[[
    Script Name    : SpawnScripts/Antonica/RelanaEverglade.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.12 12:07:04
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
Dialog10(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It pleases me to know that you have more wit about you than I first thought.  Do you wish to venture into the gully and defeat Arch Lich Udalan?")
	Dialog.AddOption("I will muster a force that will send Udalan back into the void!", "Dialog12")
	Dialog.AddOption("On second thought, I've decided to leave Norrath to its fate.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings friend of men and elves.  The Tunarian Alliance is in dire need of assistance this day.  May you lend me an ear so I can tell you of our plight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", 0, 0)
	Dialog.AddOption("Actually yes, I will listen.", "Dialog15")
	Dialog.AddOption("I'm sorry, I just don't have time for that sort of thing.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings friend of men and elves.  The Tunarian Alliance is in dire need of assistance this day.  May you lend me an ear so I can tell you of our plight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1063.mp3", 0, 0)
	Dialog.AddOption("Actually yes, I will listen.", "Dialog15")
	Dialog.AddOption("I'm sorry, I just don't have time for that sort of thing.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail and well met.  I knew that one of your ilk would eventually find your way here.  I know where your allegiances lie, but in this task I require help that the city of Qeynos cannot muster.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1063.mp3", 0, 0)
	Dialog.AddOption("I'm not a friend of Qeynos, but I'm interested in profit.  What do you need?", "Dialog5")
	Dialog.AddOption("I care little for your plight, be grateful that I leave you... standing.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Beyond these doors waits a great and powerful evil, a foe that no longer slumbers. These great doors were made long ago to hold this evil in, but we know that it has been growing in strength and will soon surpass the might of both Qeynos and Freeport combined.")
	Dialog.AddOption("Is that so?  Please do continue, you amuse me.", "Dialog8")
	Dialog.AddOption("I'll let the Overlord deal with diplomacy, I have not the time for this.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("In this gully lies the necromancer, Udalan and the army that he has summoned.  We're not sure what has caused him to regain much of his former self or where he is drawing his power from, but we know that if he isn't stopped soon all of Norrath is doomed!")
	Dialog.AddOption("If he is truly as powerful as you say, than maybe something should be done.", "Dialog1")
	Dialog.AddOption("I'll leave you to this doom, this is not of my concern.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings friend of men and elves.  The Tunarian Alliance is in dire need of assistance this day.  May you lend me an ear so I can tell you of our plight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1063.mp3", 0, 0)
	Dialog.AddOption("Actually yes, I will listen.", "Dialog15")
	Dialog.AddOption("I'm sorry, I just don't have time for that sort of thing.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've seen other adventurers like you.  I know that you are capable of great feats of power and prowess.  I also know that there are others, others that have skill surpassing that of both the Qeynos Guard and the Freeport Militia.  Do this for me and I will be forever in your debt.")
	Dialog.AddOption("I see.  What is it exactly you need?", "Dialog6")
	Dialog.AddOption("Adventurers like myself did not become great wasting words on the likes of you.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail and well met.  I knew that one of your ilk would eventually find your way here.  I know where your allegiances lie, but in this task I require help that the city of Qeynos cannot muster.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1063.mp3", 0, 0)
	Dialog.AddOption("I'm not a friend of Qeynos, but I'm interested in profit.  What do you need?", "Dialog5")
	Dialog.AddOption("I care little for your plight, be grateful that I leave you... standing.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings friend of men and elves.  The Tunarian Alliance is in dire need of assistance this day.  May you lend me an ear so I can tell you of our plight?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1063.mp3", 0, 0)
	Dialog.AddOption("Actually yes, I will listen.", "Dialog15")
	Dialog.AddOption("I'm sorry, I just don't have time for that sort of thing.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes!  Now is the time to strike, as he has not yet regained full strength.  Already he is too strong for the Qeynos Guard and all of the Tunarian Alliance, so it falls to you and your band of powerful adventurers! Gather all that you can, but do not delay!  With each passing day his strength grows and will consume all the land with disease and pestilence! ")
	Dialog.AddOption("For Qeynos!")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent!  There may be hope for all Norrathians after your deeds are complete.  Go with speed.  Be it for good or for ill, the blessings of the Tunarian Alliance go with you on your quest.")
	Dialog.AddOption("Until our paths cross again.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail and well met.  I knew that one of your ilk would eventually find your way here.  I know where your allegiances lie, but in this task I require help that the city of Qeynos cannot muster.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1063.mp3", 0, 0)
	Dialog.AddOption("I'm not a friend of Qeynos, but I'm interested in profit.  What do you need?", "Dialog5")
	Dialog.AddOption("I care little for your plight, be grateful that I leave you... standing.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings to you, have you managed to defeat the Arch Lich?  He must be stopped at all costs!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1063.mp3", 0, 0)
	Dialog.AddOption("Not yet Relana, I'm still gathering the party.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then please listen well.  Beyond these doors lies an ever growing evil, one that threatens us all if left unchecked.  An ancient necromancer named Udalan has returned to the gully and regained much of his former strength.")
	Dialog.AddOption("I see, do continue.", "Dialog16")
	Dialog.AddOption("This sounds to be a problem for the armies of Qeynos, not humble adventurers!")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Arch Lich Udalan has already begun summoning another army, one much greater than the last.  Once he has amassed a large enough army he will unleash it upon his oldest and closest foe... the city of Qeynos.  But the terror and wrath will not stop there, he will raise more dead as he goes, creating an army so vast and powerful that none on Norrath, save the Old Gods, will be able to contend with him. ")
	Dialog.AddOption("This is terrible, he must be stopped!", "Dialog11")
	Dialog.AddOption("This is not of my doing and as such, I must be off.")
	Dialog.Start()
end

