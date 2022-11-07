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
    Dialog.AddOption("Um, ok.  Thank you for that.  Good luck with your students.")	
    Dialog.Start()
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
	Dialog.Start()
end