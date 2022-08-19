--[[
    Script Name    : SpawnScripts/QeynosHarbor/IanCathlan.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11
    Script Purpose : Ian Cathlan Scout/Plate Fighter Armor Quests.   
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local FIGHTER = 1
local WARRIOR =2
local GUARDIAN= 3 
local BERSERKER = 4 
local BRAWLER = 5 
local MONK = 6 
local BRUISER= 7 
local CRUSADER = 8 
local SHADOWKNIGHT = 9 
local PALADIN = 10 

local PRIEST = 11 
local CLERIC = 12 
local TEMPLAR = 13 
local INQUISITOR = 14 
local DRUID = 15 
local WARDEN = 16 
local FURY = 17 
local SHAMAN = 18 
local MYSTIC = 19 
local DEFILER = 20 

local MAGE = 21 
local SORCERER = 22 
local WIZARD = 23 
local WARLOCK = 24 
local ENCHANTER = 25 
local ILLUSIONIST = 26 
local COERCER = 27 
local SUMMONER = 28 
local CONJUROR = 29 
local NECROMANCER = 30 

local SCOUT = 31 
local ROGUE = 32 
local SWASHBUCKLER = 33 
local BRIGAND = 34 
local BARD = 35 
local TROUBADOR = 36 
local DIRGE = 37 
local PREDATOR = 38 
local RANGER = 39 
local ASSASSIN = 40 
local ANIMALIST = 41 
local BEASTLORD = 42 
local SHAPER = 43 
local CHANNELER = 44 


local armor1 = 5588
local armor2 = 5589
local armor3 = 5590
local armor4 = 5591
local armor5 = 5592
local armor6 = 5593

function spawn(NPC)
    ProvidesQuest(NPC,armor1)
    ProvidesQuest(NPC,armor2)
    ProvidesQuest(NPC,armor3)
    ProvidesQuest(NPC,armor4)
    ProvidesQuest(NPC,armor5)
    ProvidesQuest(NPC,armor6)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then --QEYNOS FACTION CHECK
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3","I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.","noway", 3568187069, 1024390098, Spawn)
else
if GetLevel(Spawn)>=20 then --LEVEL CHECK
if  GetClass(Spawn)== GUARDIAN or GetClass(Spawn)== BERSERKER  or GetClass(Spawn)== SHADOWKNIGHT or GetClass(Spawn)== PALADIN or GetClass(Spawn)== TEMPLAR or GetClass(Spawn)== INQUISITOR  or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN then
    FaceTarget(NPC, Spawn)

    if not HasQuest(Spawn,armor1) and not HasCompletedQuest(Spawn,armor1) then 
    Dialog1(NPC,Spawn) -- INITIAL HAIL
    
    elseif HasQuest(Spawn,armor1) and GetQuestStep(Spawn,armor1)~=3 then --INBETWEEN QUESTS (no ready to turn in)
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn)
    
    elseif GetQuestStep(Spawn,armor1)==3 or GetQuestStep(Spawn,armor2)==4 or GetQuestStep(Spawn,armor3)==4 or GetQuestStep(Spawn,armor4)==4 or  GetQuestStep(Spawn,armor5)==5 then
    Dialog2(NPC,Spawn) -- DEFAULT QUEST TURN-IN AQ1-5
    elseif GetQuestStep(Spawn,armor6)==4 then      
    Dialog4(NPC,Spawn) -- AQ6 TURN-IN   
        
    elseif HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor2) and GetQuestStep(Spawn,armor2)~=4 then
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn) 

    elseif HasCompletedQuest(Spawn,armor2) and not HasQuest(Spawn,armor3) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor3) and GetQuestStep(Spawn,armor3)~=4 then
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn) 
 
    elseif HasCompletedQuest(Spawn,armor3) and not HasQuest(Spawn,armor4) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor4) and GetQuestStep(Spawn,armor4)~=4 then
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn) 

    elseif HasCompletedQuest(Spawn,armor4) and not HasQuest(Spawn,armor5) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor5) and GetQuestStep(Spawn,armor5)~=5 then
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn) 
 
    elseif HasCompletedQuest(Spawn,armor5) and not HasQuest(Spawn,armor6) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor6) and GetQuestStep(Spawn,armor6)~=4 then
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn) 
    
    elseif HasCompletedQuest(Spawn,armor6) then --FINISHED RESPONSE                         
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan016.mp3","Hail to ye as well.  Ahh, it's you! Good ta see ya again.  We finally got everything that was missing. Thanks again for your help! I don't know how I'd have done it without you!","hello", 652508257, 2879341192, Spawn) 
    end
else 
	FaceTarget(NPC, Spawn) --NOT RIGHT CLASS
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3","I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.","glare", 3568187069, 1024390098, Spawn)
    
    end
else
FaceTarget(NPC, Spawn)  --NOT RIGHT LEVEL
PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3","I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.","glare", 3568187069, 1024390098, Spawn)
end
end
end

--AQ1

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","hello", 0, 0, Spawn)
    Dialog.AddDialog( "An' hail ta ye as well.  Can ol' Ian help ya with somethin', or are ya just bein' friendly?")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan001.mp3", 92203188, 488394336)
	Dialog.AddOption( "You wouldn't happen to know where I can get some good armor, would you?", "Option1")
	Dialog.AddOption("I was just being friendly.  Good day to you.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "I might tell ya, if you help me out. In return, I'll give you some old armor that I can have refitted for you.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan002.mp3", 2339127532, 3093029338)
	Dialog.AddOption( "Maybe ... what do you want me to do?", "Option2")
	Dialog.AddOption("No, I'm not interested right now.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "My family has a history of losing things. I was hoping you could help me look for a few items; some are very sentimental.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan003.mp3", 3468227424, 330618102)
	Dialog.AddOption( "I can help you look.  Where should I start?", "Option3")
	Dialog.AddOption("Find someone else for this, I'm not interested.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor1)
end


function Dialog2(NPC, Spawn) -- Primary turn-in response.
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "What did you find?  Did you get them all?")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan006.mp3", 417646018, 2611075369)
	Dialog.AddOption( "I found everything on the list.", "Option4")
	Dialog.AddOption("I'm not sure.  I'll get back to you.")
	Dialog.Start()
end

function Option4(NPC, Spawn)  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Excellent.  Yes, these are perfect!  You did well. Here's the armor I promised.")
    PlayFlavor(NPC,"","","happy", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan009.mp3", 3393697155, 3282809696)
	Dialog.AddOption("Thank you, Ian.")
	Dialog.Start()
if GetQuestStep(Spawn,armor1)==3 then
	QuestStepIsComplete(NPC,Spawn,armor1,3)
elseif GetQuestStep(Spawn,armor2)==4 then
	QuestStepIsComplete(NPC,Spawn,armor2,4)
elseif GetQuestStep(Spawn,armor3)==4 then
	QuestStepIsComplete(NPC,Spawn,armor3,4)
elseif GetQuestStep(Spawn,armor4)==4 then
	QuestStepIsComplete(NPC,Spawn,armor4,4)
elseif GetQuestStep(Spawn,armor5)==5 then
	QuestStepIsComplete(NPC,Spawn,armor5,5)
end
end

--AQ2-6

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Judging from where you found the last stuff, I know where we should look next. Will you help me track down some more things?")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan010.mp3", 2484308007, 1400019031)
    if HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
        Dialog.AddOption( "I have the time.  Where should I go next?", "Option5")
	end
    if HasCompletedQuest(Spawn,armor2) and not HasQuest(Spawn,armor3) then
        Dialog.AddOption( "I'm not sure how you figure these things out but where do you suggest?", "Option6")
	end
    if HasCompletedQuest(Spawn,armor3) and not HasQuest(Spawn,armor4) then
        Dialog.AddOption( "How did you... nevermind... where next?", "Option7")
	end
    if HasCompletedQuest(Spawn,armor4) and not HasQuest(Spawn,armor5) then
        Dialog.AddOption( "I'm not even going to ask how you know that.  Where to?", "Option8")
	end
    if HasCompletedQuest(Spawn,armor5) and not HasQuest(Spawn,armor6) then
        Dialog.AddOption( "You're a diviner aren't you?  What's the next stop?", "Option9")
	end
	Dialog.AddOption("I'm not sure.  I'll get back to you.")
	Dialog.Start()
end

function Option5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor2)
end


function Option6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor3)
end

function Option7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor4)
end

function Option8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor5)
end

function Option9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor6)
end

function Dialog4(NPC, Spawn) --AQ6 turnin
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Hrmm ... I see.  At least most of it is still in good shape ... except for these...")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan008.mp3", 412980948, 3391212572) --Addee VO
	Dialog.AddOption( "Those were like that when I found them.")
	QuestStepIsComplete(NPC,Spawn,armor6,4)
	Dialog.Start()
end
