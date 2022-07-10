--[[
	Script Name	: SpawnScripts/SouthQeynos/SelwynOakheart.lua
	Script Purpose	: Selwyn Oakheart 
	Script Author	: Dorbin
	Script Date	: 07.08.2022
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


local armor1 = 5606
local armor2 = 5607
local armor3 = 5608
local armor4 = 5609
local armor5 = 5610
local armor6 = 5611

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
if  GetClass(Spawn)== MONK or GetClass(Spawn)== BRUISER or GetClass(Spawn)== WARDEN or GetClass(Spawn)== FURY or GetClass(Spawn)== MYSTIC or GetClass(Spawn)== DEFILER then
    FaceTarget(NPC, Spawn)

    if not HasQuest(Spawn,armor1) and not HasCompletedQuest(Spawn,armor1) then 
    Dialog1(NPC,Spawn) -- INITIAL HAIL
    
    elseif HasQuest(Spawn,armor1) and GetQuestStep(Spawn,armor1)~=3 then --INBETWEEN QUESTS (no ready to turn in)
    PlayFlavor(NPC,"","Oh, you're back so soon?  I'm sorry those adjustments aren't quite done yet, but I'm getting close.  Come back in a little while, and I should have them finished.","ponder", 0, 0, Spawn)
    
    elseif GetQuestStep(Spawn,armor1)==3 or GetQuestStep(Spawn,armor2)==4 or GetQuestStep(Spawn,armor3)==4 or GetQuestStep(Spawn,armor4)==4 or  GetQuestStep(Spawn,armor5)==5 then
    Dialog2(NPC,Spawn) -- DEFAULT QUEST TURN-IN AQ1-5
    elseif GetQuestStep(Spawn,armor6)==4 then      
    Dialog4(NPC,Spawn) -- AQ6 TURN-IN   
        
    elseif HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor2) and GetQuestStep(Spawn,armor2)~=4 then
    PlayFlavor(NPC,"","Oh, you're back so soon?  I'm sorry those adjustments aren't quite done yet, but I'm getting close.  Come back in a little while, and I should have them finished.","ponder", 0, 0, Spawn)

    elseif HasCompletedQuest(Spawn,armor2) and not HasQuest(Spawn,armor3) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor3) and GetQuestStep(Spawn,armor3)~=3 then
    PlayFlavor(NPC,"","Oh, you're back so soon?  I'm sorry those adjustments aren't quite done yet, but I'm getting close.  Come back in a little while, and I should have them finished.","ponder", 0, 0, Spawn)
 
    elseif HasCompletedQuest(Spawn,armor3) and not HasQuest(Spawn,armor4) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor4) and GetQuestStep(Spawn,armor4)~=4 then
    PlayFlavor(NPC,"","Oh, you're back so soon?  I'm sorry those adjustments aren't quite done yet, but I'm getting close.  Come back in a little while, and I should have them finished.","ponder", 0, 0, Spawn)

    elseif HasCompletedQuest(Spawn,armor4) and not HasQuest(Spawn,armor5) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor5) and GetQuestStep(Spawn,armor5)~=5 then
    PlayFlavor(NPC,"","Oh, you're back so soon?  I'm sorry those adjustments aren't quite done yet, but I'm getting close.  Come back in a little while, and I should have them finished.","ponder", 0, 0, Spawn)
 
    elseif HasCompletedQuest(Spawn,armor5) and not HasQuest(Spawn,armor6) then
    Dialog3(NPC,Spawn)  
    elseif HasQuest(Spawn,armor6) and GetQuestStep(Spawn,armor6)~=5 then
    PlayFlavor(NPC,"","Oh, you're back so soon?  I'm sorry those adjustments aren't quite done yet, but I'm getting close.  Come back in a little while, and I should have them finished.","ponder", 0, 0, Spawn)
    
    elseif HasCompletedQuest(Spawn,armor6) then --FINISHED RESPONSE                         
    PlayFlavor(NPC,"","The sun truly shines on me today.  It's a joy to see you again, dear!  And thank you ever so much for all the help.  I hope that armor worked well for you and kept you safe.  Please stop by anytime and say hello to old Selwyn.","hello", 0, 0, Spawn) 
    end
else 
	FaceTarget(NPC, Spawn) --NOT RIGHT CLASS
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry, dear. I don't think I'd be able to help you with anything right now. I'm very busy.")
    PlayFlavor(NPC,"","","no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn017.mp3", 3697608701, 2678534832)
	Dialog.AddOption("Alright.")
	Dialog.Start()

    end
else  --NOT RIGHT LEVEL
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry, dear. I don't think I'd be able to help you with anything right now. I'm very busy.")
    PlayFlavor(NPC,"","","no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn017.mp3", 3697608701, 2678534832)
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
    Dialog.AddDialog( "Oh my! You're a strong looking one, aren't you?  Pleased to meet you. My name is Selwyn.  How might I be of help to you today?")
	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	Dialog.AddOption( "I'm looking for some new armor, do you know where I can find some?", "Option1")
	Dialog.AddOption("I'm sorry I mistook you for someone else.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Oh, you are, are you?  Well hrm.... you do seem to be about the same build.  I had a dear friend give up their adventuring not long ago. I think I could make some adjustments to their old armor and give it to you.")

	Dialog.AddOption( "I would be grateful.", "Option2")
	Dialog.AddOption("No, I'm not interested right now.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog( "Well, it may take me a little time, but I think it can be done.  While I'm at it though, would you mind taking care of a few errands I have?  That'll give me some time to work on the adjustments. Otherwise, I just don't think I'd be able to get around to it.")
	Dialog.AddOption( "That sounds reasonable, what do you need done?", "Option3")
	Dialog.AddOption("I've changed my mind, I'm not interested thank you.")
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
	Dialog.AddOption( "I found everything on the list.", "Option4")
	Dialog.AddOption("I'm not sure.  I'll get back to you.")
	Dialog.Start()
end

function Option4(NPC, Spawn)  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","happy", 0, 0, Spawn)
	Dialog.AddDialog( "Thank you Selwyn it seems a perfect fit.")
	Dialog.AddOption("Oh, wonderful!  And just in time, I finished with this piece. Try it on and see what you think.  If you need any other adjustments, just let me know. Okay, dear?")
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
	Dialog.AddDialog( "So nice to see you again, dear.  Would you be able to help an old druid out again?  I've been working on the adjustments for the next piece, but so much always seems to pile up.")
    if HasCompletedQuest(Spawn,armor1) and not HasQuest(Spawn,armor2) then
        Dialog.AddOption( "What can I do to help?", "Option5")
	end
    if HasCompletedQuest(Spawn,armor2) and not HasQuest(Spawn,armor3) then
        Dialog.AddOption( "It would be my pleasure.  What needs doing?", "Option6")
	end
    if HasCompletedQuest(Spawn,armor3) and not HasQuest(Spawn,armor4) then
        Dialog.AddOption( "Do you normally do these things yourself?", "Option7")
	end
    if HasCompletedQuest(Spawn,armor4) and not HasQuest(Spawn,armor5) then
        Dialog.AddOption( "You certainly do seem to keep busy Selwyn.", "Option8")
	end
    if HasCompletedQuest(Spawn,armor5) and not HasQuest(Spawn,armor6) then
        Dialog.AddOption( "I would be happy to.", "Option9")
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
	Dialog.AddOption( "Thank you again Selwyn.")
	Dialog.AddOption("Oh!  I almost forgot, I finished this last piece for you. The new straps and buckles should be a lot better than before. Make sure it's snug. We can't have such nice people like you getting hurt out there in the wilds.  You remind me so much of my old friend Erwyn.  Well anyway, thank you again.")
	QuestStepIsComplete(NPC,Spawn,armor6,5)
	Dialog.Start()
end
