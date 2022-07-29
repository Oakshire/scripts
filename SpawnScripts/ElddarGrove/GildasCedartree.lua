--[[
	Script Name	: SpawnScripts/ElddarGrove/GildasCedartree.lua
	Script Purpose	: Gildas Cedartree 
	Script Author	: Dorbin
	Script Date	: 07.09.2022
	Script Notes	: 
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


local armor1 = 5612
local armor2 = 5613
local armor3 = 5614
local armor4 = 5615
local armor5 = 5616
local armor6 = 5617

function spawn(NPC)
    ProvidesQuest(NPC,armor1)
    ProvidesQuest(NPC,armor2)
    ProvidesQuest(NPC,armor3)
    ProvidesQuest(NPC,armor4)
    ProvidesQuest(NPC,armor5)
    ProvidesQuest(NPC,armor6)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then --QEYNOS FACTION CHECK
    PlayFlavor(NPC,"","","glare", 0, 0, Spawn)
    FaceTarget(NPC, Spawn)
else
if GetLevel(Spawn)>=20 then --LEVEL CHECK
if  GetClass(Spawn)== WIZARD or GetClass(Spawn)== WARLOCK or GetClass(Spawn)== ILLUSIONIST or GetClass(Spawn)== COERCER or GetClass(Spawn)== NECROMANCER or GetClass(Spawn)== CONJUROR then
    FaceTarget(NPC, Spawn)

    if not HasQuest(Spawn,armor1) and not HasCompletedQuest(Spawn,armor1) then 
    Dialog1(NPC,Spawn) -- INITIAL HAIL
    
    elseif HasQuest(Spawn,armor1) and GetQuestStep(Spawn,armor1)~=3 then --INBETWEEN QUESTS (no ready to turn in)
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)
    
    elseif GetQuestStep(Spawn,armor1)==3 or GetQuestStep(Spawn,armor2)==4 or GetQuestStep(Spawn,armor3)==4 or GetQuestStep(Spawn,armor4)==4 or  GetQuestStep(Spawn,armor5)==5 then
    Dialog2(NPC,Spawn) -- DEFAULT QUEST TURN-IN AQ1-5
    elseif GetQuestStep(Spawn,armor6)==5 then      
    Dialog4(NPC,Spawn) -- AQ6 TURN-IN   
        
    elseif HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor2) and GetQuestStep(Spawn,armor2)~=4 then
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)

    elseif HasCompletedQuest(Spawn,armor2) and not HasQuest(Spawn,armor3) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor3) and GetQuestStep(Spawn,armor3)~=3 then
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)
 
    elseif HasCompletedQuest(Spawn,armor3) and not HasQuest(Spawn,armor4) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor4) and GetQuestStep(Spawn,armor4)~=4 then
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)

    elseif HasCompletedQuest(Spawn,armor4) and not HasQuest(Spawn,armor5) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor5) and GetQuestStep(Spawn,armor5)~=5 then
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)
 
    elseif HasCompletedQuest(Spawn,armor5) and not HasQuest(Spawn,armor6) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor6) and GetQuestStep(Spawn,armor6)~=5 then
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)
    
    elseif HasCompletedQuest(Spawn,armor6) then --FINISHED RESPONSE                         
    PlayFlavor(NPC,"voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree005.mp3","A pleasure to see you again. Are you done? Or are you taking a break?  I know this job is taxing, but you need to finish!","ponder",  242380919, 3536759386, Spawn)
    end
else 
	FaceTarget(NPC, Spawn) --NOT RIGHT CLASS
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorry, friend. I can't offer you help at this time. Good day!")
    PlayFlavor(NPC,"","","no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree017.mp3", 3941972709, 1584350411)
	Dialog.AddOption("Alright.")
	Dialog.Start()
    
    end
else  --NOT RIGHT LEVEL
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorry, friend. I can't offer you help at this time. Good day!.")
    PlayFlavor(NPC,"","","no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree017.mp3", 3941972709, 1584350411)
	Dialog.AddOption("Alright.")
	Dialog.Start()
end
end
end

--AQ1

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","hello", 0, 0, Spawn)
    Dialog.AddDialog( "The varied paths of magic are not for everyone.  Are you here to learn mystical lessons, or can I help you with something else?")
	Dialog.AddVoiceover("voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree001.mp3", 1037575406, 3472602833)
	Dialog.AddOption( "I was admiring your attire and am curious where I might find similar clothing.", "Option1")
	Dialog.AddOption("Nothing right now, but thank you.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Why, thank you! A friend of mine in Qeynos tailored this for me. Perhaps I can see if she has time to make an extra set for you--if you help me with a few favors.")
	Dialog.AddVoiceover("voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree002.mp3", 2359463822, 3639301391)
	Dialog.AddOption( "What could I do for you?", "Option2")
	Dialog.AddOption("No, I'm not interested right now.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "As a Qeynosian wizard, I'm often asked to defend the city with my magical might. Unfortunately, prior commitments require I stay in the city for the next several weeks. If you help with my responsibilities that take me outside the city, I'd be very thankful.")
	Dialog.AddVoiceover("voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree003.mp3", 4282077641, 830643203)
	Dialog.AddOption( "It would be my pleasure to help you.", "Option3")
	Dialog.AddOption("I'm sorry, I don't have time right now.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,armor1)
end

function Dialog2(NPC, Spawn) -- Primary turn-in response.
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "You seem happy to be within the safety of the city walls. I know how you feel. Returning to Qeynos always brings a smile to my face.")
	Dialog.AddOption( "It is good to be back, and I have completed the tasks you asked of me.", "Option4")
	Dialog.AddOption("Hmm.  I must be distracted.  I will be back.")
	Dialog.Start()
end

function Option4(NPC, Spawn)  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","nod", 0, 0, Spawn)
	Dialog.AddDialog( "I will.  Thank you Gildas.")
	Dialog.AddOption("Excellent!  Qeynos and I  thank you for your service.  I spoke to my friend, and she finished this up for you.  I hope it fits. Let me know if you have any more time--mage's work is never done!")
	Dialog.Start()
if GetQuestStep(Spawn,armor1)==3 then
	QuestStepIsComplete(NPC,Spawn,armor1,3)
elseif GetQuestStep(Spawn,armor2)==4 then
	QuestStepIsComplete(NPC,Spawn,armor2,4)
elseif GetQuestStep(Spawn,armor3)==3 then
	QuestStepIsComplete(NPC,Spawn,armor3,3)
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
	Dialog.AddDialog( "It's good to see you.  It seems you are no more worse for wear. I still can't leave the city. Would you do me another favor?")
    if HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
        Dialog.AddOption( "I can, what is it that needs to be done?", "Option5")
	end
    if HasCompletedQuest(Spawn,armor2) and not HasQuest(Spawn,armor3) then
        Dialog.AddOption( "Qeynos seems to need a lot of work to keep it safe.", "Option6")
	end
    if HasCompletedQuest(Spawn,armor3) and not HasQuest(Spawn,armor4) then
        Dialog.AddOption( "What can I do to help?", "Option7")
	end
    if HasCompletedQuest(Spawn,armor4) and not HasQuest(Spawn,armor5) then
        Dialog.AddOption( "Certainly.", "Option8")
	end
    if HasCompletedQuest(Spawn,armor5) and not HasQuest(Spawn,armor6) then
        Dialog.AddOption( "I can help you one last time.", "Option9")
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
	Dialog.AddOption( "Thank you.")
	Dialog.AddOption("That is good news. You exceeded my expectations.   The robe is complete, and I must say it is some of her finest work.  Quite a reward but well deserved.  Again, Qeynos and I thank you for your services.")
	QuestStepIsComplete(NPC,Spawn,armor6,5)
	Dialog.Start()
end


