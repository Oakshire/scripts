--[[
    Script Name    : SpawnScripts/QeynosHarbor/IanCathlan.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11
    Script Purpose : Work in Progress.  Need Dialog.
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
if GetLevel(Spawn)>=20 then
if  GetClass(Spawn)== WARRIOR or GetClass(Spawn)== GUARDIAN or GetClass(Spawn)== BERSERKER or GetClass(Spawn)== CRUSADER or GetClass(Spawn)== SHADOWKNIGHT or GetClass(Spawn)== PALADIN or GetClass(Spawn)== CLERIC or GetClass(Spawn)== TEMPLAR or GetClass(Spawn)== INQUISITOR or GetClass(Spawn)== SHAMAN or GetClass(Spawn)== MYSTIC or GetClass(Spawn)== DEFILER or  GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN then
    
    if not HasQuest(Spawn,armor1) and not HasCompletedQuest(Spawn,armor1) then 
    Dialog1(NPC,Spawn)
    elseif HasQuest(Spawn,armor1) and GetQuestStep(Spawn,armor1)~=3 then
   	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn)
    elseif GetQuestStep(Spawn,armor1)==3 or GetQuestStep(Spawn,armor2)==4 then
    Dialog2(NPC,Spawn)
        
    elseif HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
    Dialog3(NPC,Spawn)
    elseif HasQuest(Spawn,armor2) and GetQuestStep(Spawn,armor2)~=4 then
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan005.mp3","Did you find anything else?  I'm afraid my leads have come up dry as well.  Do you mind looking for these one more time?","ponder", 4113276061, 3432810128, Spawn) 


    else 
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3","I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.","glare", 3568187069, 1024390098, Spawn)
    end
    end
else
FaceTarget(NPC, Spawn)
PlayFlavor(NPC,"voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3","I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.","glare", 3568187069, 1024390098, Spawn)
end
end


--AQ1

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","hello", 0, 0, Spawn)
    Dialog.AddDialog( "An' hail ta ye as well.  Can ol' Ian help ya with somethin', or are ya just bein' friendly?")
	Dialog.AddOption( "You wouldn't happen to know where I can get some good armor, would you?", "Option1")
	Dialog.AddOption("I was just being friendly.  Good day to you.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "I might tell ya, if you help me out. In return, I'll give you some old armor that I can have refitted for you.")

	Dialog.AddOption( "Maybe ... what do you want me to do?", "Option2")
	Dialog.AddOption("No, I'm not interested right now.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "My family has a history of losing things. I was hoping you could help me look for a few items; some are very sentimental.")
	Dialog.AddOption( "I can help you look.  Where should I start?", "Option3")
	Dialog.AddOption("Find someone else for this, I'm not interested.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor1)
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "What did you find?  Did you get them all?")
	Dialog.AddOption( "I found everything on the list.", "Option4")
	Dialog.AddOption("I'm not sure.  I'll get back to you.")
	Dialog.Start()
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","happy", 0, 0, Spawn)
	Dialog.AddDialog( "Thank you, Ian.")
	Dialog.AddOption("Excellent.  Yes, these are perfect!  You did well. Here's the armor I promised.")
	Dialog.Start()
if GetQuestStep(Spawn,armor1)==3 then
	QuestStepIsComplete(NPC,Spawn,armor1,3)
elseif GetQuestStep(Spawn,armor2)==4 then
	QuestStepIsComplete(NPC,Spawn,armor1,4)
end
end

--AQ2

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Judging from where you found the last stuff, I know where we should look next. Will you help me track down some more things?")
	Dialog.AddOption( "I have the time.  Where should I go next?", "Option5")
	Dialog.AddOption("I'm not sure.  I'll get back to you.")
	Dialog.Start()
end

function Option5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor2)
end
