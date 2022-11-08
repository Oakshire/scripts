--[[
    Script Name    : SpawnScripts/SouthQeynos/MagisterNiksel.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.19 10:07:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Mage1 = 5767
local Mage2 = 5768
local Sorc = 5769
local Summ = 5770
local Ench = 5771

function spawn(NPC)
    ProvidesQuest(NPC, Mage1)
    ProvidesQuest(NPC, Mage2)
    ProvidesQuest(NPC, Sorc)
    ProvidesQuest(NPC, Summ)
    ProvidesQuest(NPC, Ench)
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetLevel(Spawn) ==7 and  HasCompletedQuest(Spawn,Mage1) then
    DoneToday(NPC,Spawn)   
    elseif GetLevel(Spawn) ==8 and HasCompletedQuest(Spawn,Mage2) then
    DoneToday(NPC,Spawn)   
    elseif GetLevel(Spawn) ==9 and HasCompletedQuest(Spawn,Mage2) and GetClass(Spawn)==21 then
    FinalClassTest(NPC,Spawn)
    else
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, well, well ... a good day to you! I must say, a breath of fresh air sure gets the springs and gears runnin' in the 'ole noggin! At my age, I know all kinds of tricks to slip away from a lecture. Err ... you're not one of my students, are you?")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel000.mp3",  3187388846, 3295150638)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    if GetClass(Spawn)== 21 and GetLevel(Spawn)>=7 and not HasQuest(Spawn,Mage1) and not HasCompletedQuest(Spawn,Mage1) then
    Dialog.AddOption("No, but I would be honored to have someone as famed and skilled as you help me advance my magic abilities.","Dialog1")	
    end
    if HasCompletedQuest(Spawn,Mage1) and GetQuestStep(Spawn,Mage1)==2 then 
    Dialog.AddOption("I've dispersed the bog slugs.  They seemed to be rather malformed.","Dialog2")	
    end
    if HasCompletedQuest(Spawn,Mage1) and GetQuestStep(Spawn,Mage1)==6 then 
    Dialog.AddOption("I've gained some useful insight from your former students about sorcery and weaving of elements.","Dialog3")	
    end  
    if GetClass(Spawn)== 21 and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Mage2) and not HasCompletedQuest(Spawn,Mage2) and HasCompletedQuest(Spawn,Mage1) then
    Dialog.AddOption("Do you have time to continue my training today?","Dialog4")	
    end  
    if HasCompletedQuest(Spawn,Mage2) and GetQuestStep(Spawn,Mage2)==2 then 
    Dialog.AddOption("I've \"convinced\" Willim to have a little more confidence.","Dialog5")	
    end  
    if HasCompletedQuest(Spawn,Mage2) and GetQuestStep(Spawn,Mage2)==4 then 
    Dialog.AddOption("I've brought you an eyeball from a Klicnik.","Dialog6")	
    end  
    Dialog.AddOption("Um, ok.  Thank you for that.  Good luck with your students.")	
    Dialog.Start()
end
end

function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Hahaha!  Well, flattery will get you everywhere, my young student.  Well, I was taking a little breather to contemplate a confounding conundrum but--AHA!  I got it!  Elementals equal magic and casters all in a square!  Weeheehee!  I must remember this formula!  Err... where was I?")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel001.mp3", 784274360, 2830832827)
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
    Dialog.AddOption("Possibly teaching me more about magic?","Dialog1a")	
    Dialog.AddOption("I... should be going.")	
	Dialog.Start()
end

function Dialog1a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oh, yes, yes, yes.  Well, judging by your appearance, you have some magical aptitude.  Then, again, one of my first lessons for you is never judge a book by its cover--many a mage has walked away with a burnt beard making that mistake!")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel002.mp3", 4179756044, 2171161837)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Perhaps I could prove myself? Like a test?","Dialog1b")	
	Dialog.Start()
end

function Dialog1b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("What an excellent idea!  How about I run you through a primer course? This will allow you to focus on one school of training.  Yes, this will do just fine.  Let's begin with my personal favorite, summoning.  A summoner sees the \"holes\", if you will, in the fabric of reality.  With enough studying summoners can use those gaps to cast spells. ")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel003.mp3", 2810155587, 3579473530)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("What are these reality holes?","Dialog1c")	
	Dialog.Start()
end

function Dialog1c(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("They're pieces of the world that do not fit together. The conundrum I just solved may help me understand it better, give or take another hundred years of studying.  It's easier to think of the holes as places where a summoner \"pulls\" matter that doesn't actually exist.  Whether it's a traveling companion or a tasty loaf of bread, it matters not.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel004.mp3", 3848481052, 1928107101)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("What are these reality holes?","OfferMage1")	
	Dialog.Start()
end

function OfferMage1(NPC,Spawn)
    OfferQuest(NPC,Spawn,Mage1)
    FaceTarget(NPC,Spawn)
end


function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Very observant, my student. When summoners bring forth companions from these holes, they should dispose of the creatures when they're done. No one likes a messy laboratory, let alone a messy world.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel006.mp3", 1370391486, 1025084614)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Well, at least I was able to take care of some of the lost creatures.","Dialog2a")	
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let us move on to the next lesson.  Another school of magic is sorcery. Sorcerers work with raw ingredients and shape them to their liking.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel007.mp3", 2728241078, 3382419628)
    Dialog.AddOption("[Listen]","Dialog2b")	
    Dialog.AddOption("Hopefully with a little less \"bog\".","Dialog2b")	
	Dialog.Start()
end

function Dialog2b(NPC,Spawn)
    SetStepComplete(Spawn,Mage1,2)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("By taking these energies and forming them into all manners of tools, life can be made so much easier.  I think it's best if you spoke to some of my former students who pursued sorcery. Let me write their names in your journal.  Go speak with them and see how they apply their studies.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel008.mp3", 1804800533, 912997283)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddOption("Alright. I'll return once I've spoken with them.")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    SetStepComplete(Spawn,Mage1,6)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Good, good, good.  I hope you learned the many uses of sorcery's power--just remember to respect this power.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel009.mp3", 3515068214, 3688909586)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("It was enlightening to hear how elemental magics can be destructive, but also deadly.","DoneToday")	
	Dialog.Start()
end

function DoneToday(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I'm pleased with your progress. Unfortunately, today's lesson is over. I must write this postulate before I forget it. Please study what I taught you thus far. We can continue your lessons at another time.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel010.mp3", 2118767322, 484427585)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("Thank you. I'll return soon for more lessons.")	
    if GetClass(Spawn)== 21 and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Mage2) and not HasCompletedQuest(Spawn,Mage2) and HasCompletedQuest(Spawn,Mage1) then
    Dialog.AddOption("Please, I can't wait! I am eager to keep learning from more from your lessons if you have time.","Dialog4")	
    end  
    Dialog.Start()
end


---MAGE2
function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("For you? Of course I do! Your last visit inspired me to solve my Theory of Elementary--perhaps you can help me work on it a bit later. Now, if you recall, in our last lesson, you learned the skills of a sorcerer and a summoner. Today, you shall learn the skills of an enchanter. Shall we begin?")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel011.mp3", 2118767322, 484427585)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Yes, I am ready.","Dialog4a")	
	Dialog.Start()
end

function Dialog4a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let's pick up where we left off.  I can summarize an enchanter's philosophy in one phrase: \"I think, therefore you should too.\"")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel012.mp3", 3711475963, 1487434543)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("[Listen]","Dialog4b")	
	Dialog.Start()
end

function Dialog4b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("This means if you understand how a person thinks, then that person is more likely to work with you and not against you. Add a little magic to the equation and presto -- instant obfuscation!")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel013.mp3", 1799784542, 2411177016)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("[Listen]","Dialog4c")	
    Dialog.AddOption("So, enchanters influence thought?","Dialog4c")	
	Dialog.Start()
end

function Dialog4c(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Enchanters use their magic to affect the minds of others.  Before you try casting an enchantment spell, you must learn how to enchant without magic. How can I show you this?  Hmmm...")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel014.mp3", 1243742435, 942352584)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("[Wait patiently]","OfferMage2")	
	Dialog.Start()
end

function OfferMage1(NPC,Spawn)
    OfferQuest(NPC,Spawn,Mage1)
    FaceTarget(NPC,Spawn)
end

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oh, you did?  What transpired during your conversation?")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel016.mp3", 1372935476, 2342843498)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I gave him a magic charm that built his confidence.","Dialog5a")	
	Dialog.Start()
end

function Dialog5a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You did?  That's odd ... I didn't know you had enchanting skills ... Oh! I see! Good show, friend! Well, you aced all your lessons. Now it's time for a final test.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel017.mp3", 1446574979, 1771976575)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    Dialog.AddOption("I'd be willing to be tested.","Dialog5b")	
	Dialog.Start()
end

function Dialog5b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Of course your test!  I can't teach you without evaluating your progress. You're quite gifted, indeed, but you must apply your lessons.  And I need some time to write out a magical formula.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel018.mp3", 2726943196, 3101869542)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("What must I do?","Dialog5c")	
	Dialog.Start()
end

function Dialog5c(NPC,Spawn)
    SetStepComplete(Spawn,Mage2,2)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("It's a test that was given to me during my early years of research. Travel to Antonica and bring me an eyeball from a Klicnik Mite.  Now, if I abbreviate Elemental to the letter E, then an equal sign...")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel019.mp3", 654990311, 3534891739)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Alright. I'll be back shortly!")	
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    SetStepComplete(Spawn,Mage2,4)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let me see it.  Wonderful!  This is the perfect size for pickling. Mmmm ... nothing's better than a pickled Klicnik eye sandwich with mustard and mayonnaise.  Oh, drat!  I dropped my sandwich on my formula!  And that was my only copy! I can't recreate it either! Oh well... the formula would never work anyway. As for you, it's time you make a choice.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel020.mp3", 538297903, 4048671950)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    if GetLevel(Spawn)== 8 then
    Dialog.AddOption("Am I ready now?","DoneToday")	
    elseif GetLevel(Spawn) >8 then
    Dialog.AddOption("That task was simple enough. What must I do to advance?","FinalClassTest")	
    end
	Dialog.Start()
end

--FINAL Test
function FinalClassTest(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("What field of arcane studies do you want to pursue? You showed great aptitude in all three schools, but you must focus your studies.  So what's your choice?")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel021.mp3", 167518160, 503095515)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Summoning [WORK-IN-PROGRESS]","Summoner")	
    Dialog.AddOption("Sorcery [WORK-IN-PROGRESS]","Sorcery")	
    Dialog.AddOption("Enchanting [WORK-IN-PROGRESS]","Enchanter")	
	Dialog.Start()
end
--I feel the destructive arts are to my liking. I shall study to be a sorcerer.
function Summoner(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("By peering into the unseen, summoners use magic to create matter from nothing. A summoner never wants for anything -- companions, food, or even a nice fluffy pillow to snuggle up with when it gets cold at night ... er, where was I? Ah, yes, do you want to study summoning?")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel023.mp3", 990225084, 344110692)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("I will never again be without anything I need.  I am a summoner.")	
    Dialog.AddOption("Actually, I better rethink this.","FinalClassTest")	
	Dialog.Start()
end


function Sorcery(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A sorcerer taps into the mana flow and draws the hidden energies that swirl within that maelstrom of forces.  By taking these energies, sorcerers simplify their lives, and make their opponent's lives a heck of a lot harder. But along with sorcery's incredible power, comes incredible responsibility. Can you handle this?")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("The forces of the arcane will be at my beck and call.  I am a sorcerer.")	
    Dialog.AddOption("Actually, I better rethink this.","FinalClassTest")	
	Dialog.Start()
end


function Enchanter(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Enchanters love hearing people say, \"I'll believe it when I see it.\"  Using their magic, enchanters make people believe in all matter of things! Illusionary dragons are just as threatening as real ones to the common enemy, if you \"see\" what I'm saying.  So, will you focus your studies on enchanting?")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("I prefer to see what is real and what isn't.  I am an enchanter.")	
    Dialog.AddOption("Actually, I better rethink this.","FinalClassTest")	
	Dialog.Start()
end

--Now, now, there's no one thing that gives you the power to become a sorcerer, but this should help you get a better grasp on how to use your sorcery power. No need to return to me afterwards, I've taught you as much as I can.
--I feel the destructive arts are to my liking. I shall study to be a sorcerer.
--You'll be an enchanter... yes... perhaps ... First, let's see how you deal with an angry crowd.  Not everyone is cut out to deal with the thought required behind this choice ... we need to make sure that you are.
