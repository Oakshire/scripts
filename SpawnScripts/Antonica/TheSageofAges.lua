--[[
    Script Name    : SpawnScripts/Antonica/TheSageofAges.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 06:06:34
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Drag = 5577
local FireIce =5578

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetQuestStep(Spawn,Drag)==1 or GetQuestStep(Spawn,Drag)==2 then
    Dialog19(NPC, Spawn)
elseif GetQuestStep(Spawn,Drag)==3 or GetQuestStep(Spawn,Drag)==4 or GetQuestStep(Spawn,Drag)==5 or GetQuestStep(Spawn,Drag)==6 or GetQuestStep(Spawn,Drag)==7 or GetQuestStep(Spawn,Drag)==8 or GetQuestStep(Spawn,Drag)==9 or GetQuestStep(Spawn,Drag)==10 or GetQuestStep(Spawn,Drag)==11 or GetQuestStep(Spawn,Drag)==12 or GetQuestStep(Spawn,Drag)==13 or GetQuestStep(Spawn,Drag)==27 or GetQuestStep(Spawn,Drag)==26 or GetQuestStep(Spawn,Drag)==28 or GetQuestStep(Spawn,Drag)==14 or GetQuestStep(Spawn,Drag)==15 or GetQuestStep(Spawn,Drag)==18 or GetQuestStep(Spawn,Drag)==20 or GetQuestStep(Spawn,Drag)==29 then
    Dialog14(NPC, Spawn)
--	RandomGreeting(NPC, Spawn)
elseif HasCompletedQuest(Spawn,Drag) and HasQuest(Spawn,FireIce)then
  Dialog11(NPC, Spawn)  
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No.  The research relating to understanding just one of the runes is far too precious for the owner to consent in relinquishing it, and there is not enough wealth on Norrath to purchase the translated runes from the individual owners.  It is even quite likely that half the research is lost to the sands of time, having been destroyed in the cataclysms.  ")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages013.mp3", 3880431009, 895005648)
	Dialog.AddOption("If I were able to obtain all the research, would you be able to teach me the language?", "Dialog13")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Those Drakota must have rebelled against him and stole the shards for their own grab at power.  Nagafen is still too weak from the Truthspeaker's attack to go after them himself, so he remains safely in his lair while he gets mortals to do his dirty work. ")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages022.mp3", 300799050, 2936988194)
	Dialog.AddOption("Who is the Truthspeaker? ", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Truthspeaker was an agent of the Ring of Scale.  It was he who risked his life to lead the Drakota, the same Drakota that Nagafen now commands, in an attack to stop the mating of Nagafen and Vox, a mating that would result in utter doom for all of Norrath!  The Truthspeaker's Drakota were able to destroy Vox to prevent the union, but Nagafen was able to retreat to the safety of his lair.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages023.mp3", 378285402, 2423385351)
	Dialog.AddOption("Where is the Truthspeaker now? ", "Dialog17")
	Dialog.AddOption("Why is the mating of the Lady Vox and the Lord Nagafen so dangerous? ")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Restore the Lady Vox to life?  Nagafen must know that mortals do not have sufficient power or knowledge to resurrect an elder dragon from the dead.  I do not trust him.  The King of Fire is deceitful and sinister.  His forked tongue only speaks lies.  This must be why he wants me destroyed.  He means to put his plots in motion and knows that I am aware of his trickery.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages021.mp3", 717214449, 4029953103)
	Dialog.AddOption("If that is true, then why does he want me to kill his Drakota and reclaim Vox's essence shards?", "Dialog2")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Look to the sky, child.  The destruction you find there is the doing of the Sleeper simply as a display of power and a reminder to all living beings of his supremacy.  Do you realize the danger now?  Nagafen wants the power to do just that.  Imagine an army of dragons that could each do that with Nagafen and Vox reigning king and queen over them.  It is well that the Truthspeaker succeeded in his task to destroy the Lady Vox.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages026.mp3", 1118947610, 4281103827)
	Dialog.AddOption("Now Nagafen wants me to help return her to life. ", "Dialog21")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I sincerely hope you are right, but I fear it cannot be done.  However, I wish you the best of luck in this quest.  In the meantime I will look into my own research and libraries for clues into the greater plot that is unfolding around us.  Be careful in your journeys, you may be in far more danger than we know.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages015.mp3", 3846775839, 1239712166)
	Dialog.AddOption("I will.  Farewell Sage. ","DragUpdate")
	Dialog.Start()
end

function DragUpdate(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
        QuestStepIsComplete(Spawn,Drag,2)
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If the Lady Vox knew the location of this orb, it might be Nagafen's plan for you to resurrect the spirit of Vox long enough to discover the whereabouts.  Even though Nagafen is using you, the best course of action would be to follow his plan so that we can learn of the orb's location before he can lay his claws upon it.  Find this orb and bring it to me.  We will foil the Lord Nagafen's villainous plot.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages029.mp3", 2075555749, 3374038885)
	Dialog.AddOption("Are you sure this is the best thing to do? ", "Dialog8")
	Dialog.AddOption("Yes, that sounds like a good plan. ")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It frightens me to say this, but yes, this is the course of action we need to take.  This orb will fall into Nagafen's claws in due time unless we act to prevent it.  He may already have other groups searching for it.  The orcs you encountered while collecting the runes may be one such group.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages030.mp3", 2293784606, 1662398106)
	Dialog.AddOption("I understand. ", "Dialog18")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An Orb of Omnipotence?  I have not heard of such a thing.  Did he say why he wanted it?")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages028.mp3", 659900152, 3550811141)
	Dialog.AddOption("No, just that it belonged to him and he would double our reward if we brought it to him. ", "Dialog7")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes ... Yes ... I will be able to teach you this language now.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages019.mp3", 2732880442, 1441450687)
	Dialog.AddOption("Good, let's get started. ","DragFinish")
	Dialog.Start()
end

function DragFinish(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    QuestStepIsComplete(Spawn,Drag,29)
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, adventurer!  I am pleased to see that you still live.  Did you speak to Lord Nagafen?")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages020.mp3", 324789125, 3962714360)
	Dialog.AddOption("No, not yet. ")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It is forbidden among dragonkind for dragons of differing elements to mate and bring forth offspring.  The combination of the elements result in a prismatic dragon, a creature of immense power and energy.  Only one prismatic dragon has existed on Norrath, the Sleeper, Kerafyrm.  Nagafen must believe he can control a prismatic offspring, but it seems he cannot even fully control the Drakota he wrested from the Truthspeaker.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages025.mp3", 744907193, 303219507)
	Dialog.AddOption("How powerful are prismatic dragons? ", "Dialog5")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes ... yes, I believe I could.  I know many techniques and spells that enhance the learning of tongues, but this idea is all for naught.  It is impossible for one person to obtain all the translated Draconic runes, let alone find them.  It is a hopeless quest, friend.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages014.mp3", 865879437, 2521426664)
	Dialog.AddOption("It can be done.  I will find the runes. ", "Dialog6")
	Dialog.Start()
end



function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, adventurer! What word do you have on the runes of the Draconic language?")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages016.mp3", 1144286840, 1817664808)
	Dialog.AddOption("I am making progress, but I still do not have all twenty six runes. ")
    if GetQuestStep(Spawn,Drag)==29 then
    Dialog.AddOption("I have obtained research on the translation of all twenty six Draconic runes. ", "Dialog23")
    end
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Orcs?  Their kind has never been interested in knowledge such as this, even after the lifting of the Rathe's curse.  This does not bode well...")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages018.mp3", 2339550336, 327645109)
	Dialog.AddOption("Will you be able to teach me Draconic? ", "Dialog10")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is a very unfortunate turn of events.  Very few beings on Norrath know of this language, and even fewer still know enough to read and teach it.  Many mortal scholars have tried to study the language but even finding one written rune of the language is a challenge.  Some have dedicated their entire research to just understanding one or two of the Draconic letters.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages011.mp3", 545378275, 1782543526)
	Dialog.AddOption("Do you have any research on the language? ", "Dialog20")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Truthspeaker has not been heard of since the attack on Nagafen in the Lavastorm Mountains.  All that is known of that attack is that Nagafen lives and is now in control of the Drakota assassins.  The Truthspeaker is presumed destroyed.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages024.mp3", 3567160806, 1171044088)
	Dialog.AddOption("Why is the mating of the Lady Vox and the Lord Nagafen so dangerous? ", "Dialog12")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Follow Nagafen's instruction in resurrecting Vox's spirit, but only in this.  Do not trust his words.  He will deceive you with lies and fallacies.  He will twist the truth and double cross you in the end.  Do not let him do this for he means to bring about the destruction of this world.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages031.mp3", 2269350236, 2908922351)
	Dialog.AddOption("I will resurrect Vox and learn the location of this orb. ")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you spoken with the Lord Nagafen?")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages010.mp3", 2996841651, 3104118564)
    if GetQuestStep(Spawn,Drag)==2 then
	Dialog.AddOption("No, the majordomo will not let me enter the lair without knowing Draconic.", "Dialog16")
    end
	Dialog.AddOption("No.  I haven't been into Nagafen's lair yet. ")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sadly, no.  There are many ancient languages I have scribed for historical record but Draconic has always eluded my reach.  However, I have heard theories from my consociates that it might be possible to make a compilation of all the research on the Draconic runes if someone were to gather all the work done by the various scholars.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages012.mp3", 758040686, 339801576)
	Dialog.AddOption("Has this compilation ever been attempted? ", "Dialog1")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes and that part worries me.  He must know that no mortal possesses the ability to return an elder dragon to full life.  There must be another reason why he wishes you to attempt this.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages027.mp3", 3355447299, 1041652679)
	Dialog.AddOption("He also asked if the Drakota we defeated were in possession of a glowing orb, an Orb of Omnipotence he called it. ", "Dialog9")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, adventurer!  I am pleased to see that you still live.  Did you speak to Lord Nagafen?")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages020.mp3", 324789125, 3962714360)
	Dialog.AddOption("Yes.  He says he is not responsible for the Drakota's attacking you.  He asks that my companions and I seek to restore Vox to life. ", "Dialog4")
	Dialog.AddOption("No, not yet. ")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The gods be awakened!  Can it be true?!  Yes!  You have done it!  I can't fathom how you obtained all these, but here they are.  This is truly amazing!")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages017.mp3", 2273109136, 863771443)
	Dialog.AddOption("There were orcs all over these things.  They seem to be after them as well.", "Dialog15")
	Dialog.Start()
end

