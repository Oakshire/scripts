--[[
    Script Name    : SpawnScripts/Freeport2Room1/SlumlordValthun.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.21 08:06:57
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
    if GetSpawnLocationID(NPC)==133785258 then
    SetRequiredQuest(NPC, 5859, 1, 1) --STONESTAIR
    SetRequiredQuest(NPC, 5859, 2, 1)   
    SetRequiredQuest(NPC, 5859, 3, 1)   
    SetRequiredQuest(NPC, 5859, 4, 1)   
    SetRequiredQuest(NPC, 5859, 5, 1)   
    SetRequiredQuest(NPC, 5859, 6, 1)   
    SetRequiredQuest(NPC, 5859, 7, 1)
    elseif GetSpawnLocationID(NPC)==133785259 then
    SetRequiredQuest(NPC, 5859, 11, 1)   
    SetRequiredQuest(NPC, 5859, 12, 1)   
    SetRequiredQuest(NPC, 5859, 13, 1) 
    end
    
    if GetSpawnLocationID(NPC)==133785258 then
    SetRequiredQuest(NPC, 5860, 1, 1) --BIG BEND
    SetRequiredQuest(NPC, 5860, 2, 1)   
    SetRequiredQuest(NPC, 5860, 3, 1)   
    SetRequiredQuest(NPC, 5860, 4, 1)   
    SetRequiredQuest(NPC, 5860, 5, 1)   
    SetRequiredQuest(NPC, 5860, 6, 1)   
    SetRequiredQuest(NPC, 5860, 7, 1)   
    elseif GetSpawnLocationID(NPC)==133785259 then
    SetRequiredQuest(NPC, 5860, 11, 1)   
    SetRequiredQuest(NPC, 5860, 12, 1)   
    SetRequiredQuest(NPC, 5860, 13, 1)    
    end

    if GetSpawnLocationID(NPC)==133785258 then
    SetRequiredQuest(NPC, 5861, 1, 1) --BEGGAR'S COURT
    SetRequiredQuest(NPC, 5861, 2, 1)   
    SetRequiredQuest(NPC, 5861, 3, 1)   
    SetRequiredQuest(NPC, 5861, 4, 1)   
    SetRequiredQuest(NPC, 5861, 5, 1)   
    SetRequiredQuest(NPC, 5861, 6, 1)   
    SetRequiredQuest(NPC, 5861, 7, 1)   
    elseif GetSpawnLocationID(NPC)==133785259 then
    SetRequiredQuest(NPC, 5861, 11, 1)   
    SetRequiredQuest(NPC, 5861, 12, 1)   
    SetRequiredQuest(NPC, 5861, 13, 1)  
    end

    if GetSpawnLocationID(NPC)==133785258 then
    SetRequiredQuest(NPC, 5862, 1, 1) --LONGSHADOW
    SetRequiredQuest(NPC, 5862, 2, 1)   
    SetRequiredQuest(NPC, 5862, 3, 1)   
    SetRequiredQuest(NPC, 5862, 4, 1)   
    SetRequiredQuest(NPC, 5862, 5, 1)   
    SetRequiredQuest(NPC, 5862, 6, 1)   
    SetRequiredQuest(NPC, 5862, 7, 1)   
    elseif GetSpawnLocationID(NPC)==133785259 then
    SetRequiredQuest(NPC, 5862, 11, 1)   
    SetRequiredQuest(NPC, 5862, 12, 1)   
    SetRequiredQuest(NPC, 5862, 13, 1) 
    end

    if GetSpawnLocationID(NPC)==133785258 then
    SetRequiredQuest(NPC, 5863, 1, 1) --SCALE YARD
    SetRequiredQuest(NPC, 5863, 2, 1)   
    SetRequiredQuest(NPC, 5863, 3, 1)   
    SetRequiredQuest(NPC, 5863, 4, 1)   
    SetRequiredQuest(NPC, 5863, 5, 1)   
    SetRequiredQuest(NPC, 5863, 6, 1)   
    SetRequiredQuest(NPC, 5863, 7, 1)   
    elseif GetSpawnLocationID(NPC)==133785259 then
    SetRequiredQuest(NPC, 5863, 11, 1)   
    SetRequiredQuest(NPC, 5863, 12, 1)   
    SetRequiredQuest(NPC, 5863, 13, 1) 
    end

    if GetSpawnLocationID(NPC)==133785258 then
    SetRequiredQuest(NPC, 5864, 1, 1) --TEMPLE STREET
    SetRequiredQuest(NPC, 5864, 2, 1)   
    SetRequiredQuest(NPC, 5864, 3, 1)   
    SetRequiredQuest(NPC, 5864, 4, 1)   
    SetRequiredQuest(NPC, 5864, 5, 1)   
    SetRequiredQuest(NPC, 5864, 6, 1)   
    SetRequiredQuest(NPC, 5864, 7, 1)   
    elseif GetSpawnLocationID(NPC)==133785259 then
    SetRequiredQuest(NPC, 5864, 11, 1)   
    SetRequiredQuest(NPC, 5864, 12, 1)   
    SetRequiredQuest(NPC, 5864, 13, 1) 
    end
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==2 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==2 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==2 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==2 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==2 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==2 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/slumlord_valthun/fprt_ph_1r01/100_city_slumlord_valthun_housing_callout1_b64ee15.mp3", "It's about time you arrived.  Let's get this over with.", "sniff", 3512384459, 1802814631, Spawn)
elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==5 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==5 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==5 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==5 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==5 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==5 then
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/slumlord_valthun/fprt_ph_1r01/100_city_slumlord_valthun_housing_callout2_f99d8b9b.mp3", "Ah, you're back.  I'd like to...err... apologize for my earlier behavior.", "nod", 3212324263, 527488253, Spawn)
 elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==11 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==11 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==11 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==11 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==11 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==11 then
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/slumlord_valthun/fprt_ph_1r01/100_city_slumlord_valthun_housing_callout3_b7ae1d4c.mp3", "Why are you back already?!", "doubletake", 1913759677, 811352449, Spawn)
   end 
end


function hailed(NPC, Spawn)
if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==2 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==2 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==2 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==2 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==2 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==2 then
Dialog1 (NPC,Spawn)  --GET FURNITURE 1

elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==3 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==3 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==3 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==3 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==3 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==3 then
    if HasItem(Spawn,61915,1) then --CHECK IF HAS TABLE (FURNITURE1)
    continue1(NPC, Spawn) --STILL NEED TO PLACE FURNITURE 1
    else
    Dialog2(NPC,Spawn) --SPEAK WITH BANKER
    end
elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==4 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==4 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==4 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==4 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==4 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==4 then
    Dialog2(NPC, Spawn) --SPEAK WITH BANKER


elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==5 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==5 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==5 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==5 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==5 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==5 then
    Dialog3(NPC,Spawn) --GET FURNITURE 2
    
elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==6 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==6 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==6 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==6 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==6 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==6 then
    if HasItem(Spawn,61913,1) then --CHECK IF HAS MIRROR (FURNITURE2)
    Dialog3(NPC,Spawn) --STILL NEED TO PLACE FURNITURE 2
    else
    Dialog4(NPC,Spawn) --FIND LOCATIONS
    end  
    
elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==7 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==7 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==6 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==7 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==7 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==7 then
    Dialog4b(NPC, Spawn) --IF ALREADY ON THE TASK TO FIND LOCATIONS.  CARETAKER DISAPPEARS UNTIL ON THE FINAL STEPS.

 elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==11 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==11 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==11 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==11 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==11 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==11 then
    Dialog5(NPC,Spawn) -- GET FURNITURE 3  
 
 elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==12 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==12 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==12 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==12 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==12 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==12 then
     if HasItem(Spawn,61909,1) then --CHECK IF HAS CHANDELIER (FURNITURE3)
    Dialog5a(NPC,Spawn) --STILL NEED TO PLACE FURNITURE 3
    else
    Dialog6(NPC,Spawn) --START CITIZENSHIP TRIAL
    end   
elseif HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==13 or HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==13 or HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==13 or HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==13 or HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==13 or HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==13 then
 Dialog6b(NPC, Spawn)
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
	Dialog.AddDialog("You wasted enough of my precious time. I've more important duties than talking to you. So listen closely: This is your new home. Get used to it.  Consider yourself lucky to receive such a fine house from the Overlord.  If I had it my way, you'd freeze in the alleys. ")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun001.mp3", 2753005301, 1802095357)
	Dialog.AddOption("Do you have a problem with me?", "AllWeCanDo")
	Dialog.Start()
end

function AllWeCanDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn)
	SpawnSet(NPC,"mood_state","11852")
	Dialog.AddDialog("Do I have a problem with you? Let's see, you're a filthy refugee who doesn't have coin worth counting. I'm not making a copper off you, but the Overlord forces me to let you live here for free. So, do I have a problem with you? Yes. I do. Now, let's get on with this, shall we?")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun002.mp3", 2611962175, 2812157786)
	Dialog.AddOption("[continue]", "continue1")
	Dialog.Start()
end

function continue1(NPC, Spawn)

    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==2 then
    SetStepComplete(Spawn,5859,2)
        Quest = GetQuest(Spawn,5859)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Coalition of Tradesfolke. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==2 then
    SetStepComplete(Spawn,5860,2)
        Quest = GetQuest(Spawn,5860)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Coalition of Tradesfolke. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==2 then
    SetStepComplete(Spawn,5861,2)
        Quest = GetQuest(Spawn,5861)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Coalition of Tradesfolke. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==2 then
    SetStepComplete(Spawn,5862,2)
        Quest = GetQuest(Spawn,5862)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Coalition of Tradesfolke. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==2 then
    SetStepComplete(Spawn,5863,2)
        Quest = GetQuest(Spawn,5863)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Coalition of Tradesfolke. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==2 then
    SetStepComplete(Spawn,5864,2)
        Quest = GetQuest(Spawn,5864)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Coalition of Tradesfolke. Decorate your inn room with it.", 61915)
    end
        
 
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("The Coalition of Tradesfolke gave you a piece of furniture. The first time it's free. Now, take this and put it in the room. Let's get on with it.")
	SpawnSet(NPC,"mood_state","0")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun003.mp3", 3293605893, 2029752984)
	Dialog.AddOption("Give me a moment while I put this down.")
	Dialog.Start()
end


-------DIALOG 2

function Dialog2(NPC, Spawn)
    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==3 then
    SetStepComplete(Spawn,5859,3)
    elseif HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==3 then
    SetStepComplete(Spawn,5860,3)
    elseif HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==3 then
    SetStepComplete(Spawn,5861,3)
    elseif HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==3 then
    SetStepComplete(Spawn,5862,3)
    elseif HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==3 then
    SetStepComplete(Spawn,5863,3)
    elseif HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==3 then
    SetStepComplete(Spawn,5864,3)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "lookaway", 0, 0, Spawn)
	Dialog.AddDialog("Ugh ... you're putting that there? Even your decorating taste is pathetic, but do as you wish. The last thing I need to tell you about is your bank account. The Freeport Reserve is waiting for you to register. Now we're finished, and I can leave.")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun004.mp3", 1742619924, 1180312438)
	Dialog.AddOption("Thank you for your time, caretaker.")
	Dialog.Start()
end

-------DIALOG 3
function Dialog3(NPC, Spawn)
    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==5 then
        SetStepComplete(Spawn,5859,5)
        Quest = GetQuest(Spawn,5859)
        GiveQuestItem(Quest, Spawn, "A 'gift' from Valthun as a token of 'friendship'?", 61913)
    elseif HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==5 then
        SetStepComplete(Spawn,5860,5)
        Quest = GetQuest(Spawn,5860)
        GiveQuestItem(Quest, Spawn, "A 'gift' from Valthun as a token of 'friendship'?", 61913)
    elseif HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==5 then
        SetStepComplete(Spawn,5861,5)
        Quest = GetQuest(Spawn,5861)
        GiveQuestItem(Quest, Spawn, "A 'gift' from Valthun as a token of 'friendship'?", 61913)
    elseif HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==5 then
        SetStepComplete(Spawn,5862,5)
        Quest = GetQuest(Spawn,5862)
        GiveQuestItem(Quest, Spawn, "A 'gift' from Valthun as a token of 'friendship'?", 61913)
    elseif HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==5 then
        SetStepComplete(Spawn,5863,5)
        Quest = GetQuest(Spawn,5863)
        GiveQuestItem(Quest, Spawn, "A 'gift' from Valthun as a token of 'friendship'?", 61913)
    elseif HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==5 then
        SetStepComplete(Spawn,5864,5)
        Quest = GetQuest(Spawn,5864)
        GiveQuestItem(Quest, Spawn, "A 'gift' from Valthun as a token of 'friendship'?", 61913)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("I am sorry if I was a bit ... rude. You must understand. I've had a very long day. As a token of my friendship, please take this mirror.  Place it anywhere you like as long as you can see yourself in it. What use is a mirror if you can't see it, right?")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun005.mp3", 1179966071, 3385583561)
	Dialog.AddOption("Hmmm... very well.  I'll accept your apology.")
	Dialog.Start()
end

-------DIALOG 4
function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
	Dialog.AddDialog("That's a perfect spot, friend ... perfect.  Have you thought about how to make some coin now that you have a new, loving home?")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun006.mp3", 2411252077, 4223491068)
	Dialog.AddOption("No, I haven't thought of that yet.","Dialog4a")
	Dialog.Start()
end

function Dialog4a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, if I may be so bold, let me offer a suggestion: Many people make a bounty of coin ridding our fine city of unwanted vermin. Some people venture down below into the sewers beneath our feet, but others seek their fortunes within the older, ruined parts of the city. You would do well exterminating these creatures, adventurer.")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun007.mp3", 2795247576, 826391005)
	Dialog.AddOption("Where will I find these places?", "Dialog4b")
	Dialog.Start()
end

function Dialog4b(NPC, Spawn)
    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==6 then
    SetStepComplete(Spawn,5859,6)
    elseif HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==6 then
    SetStepComplete(Spawn,5860,6)
    elseif HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==6 then
    SetStepComplete(Spawn,5861,6)
    elseif HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==6 then
    SetStepComplete(Spawn,5862,6)
    elseif HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==6 then
    SetStepComplete(Spawn,5863,6)
    elseif HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==6 then
    SetStepComplete(Spawn,5864,6)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I just told you, fool!  Errr ... I meant to say, quite a number of places, actually. Search the city to find the vermin. Let me jot down a list for you. And don't worry about me. I'll wait here while you're gone.")
	PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun008.mp3", 1471261046, 2380441133)
	Dialog.AddOption("If you touch any of my things while I'm gone, I'll be sure to return the favor.")
	Dialog.Start()
end

-------DIALOG 5

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Err... I mean, did you find your way around alright?")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun009.mp3", 216673398, 1959125107)
	Dialog.AddOption("Yeah.  What were you just doing?","Dialog5a")
	Dialog.Start()
end

function Dialog5a(NPC, Spawn)

    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==11 then
        SetStepComplete(Spawn,5859,11)
        Quest = GetQuest(Spawn,5859)
        GiveQuestItem(Quest, Spawn, "Valthun has given you an old chandelier. At least it will brighten up the place.", 61909)
    elseif HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==11 then
        SetStepComplete(Spawn,5860,11)
        Quest = GetQuest(Spawn,5860)
        GiveQuestItem(Quest, Spawn, "Valthun has given you an old chandelier. At least it will brighten up the place.", 61909)
    elseif HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==11 then
        SetStepComplete(Spawn,5861,11)
        Quest = GetQuest(Spawn,5861)
        GiveQuestItem(Quest, Spawn, "Valthun has given you an old chandelier. At least it will brighten up the place.", 61909)
    elseif HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==11 then
        SetStepComplete(Spawn,5862,11)
        Quest = GetQuest(Spawn,5862)
        GiveQuestItem(Quest, Spawn, "Valthun has given you an old chandelier. At least it will brighten up the place.", 61909)
    elseif HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==11 then
        SetStepComplete(Spawn,5863,11)
        Quest = GetQuest(Spawn,5863)
        GiveQuestItem(Quest, Spawn, "Valthun has given you an old chandelier. At least it will brighten up the place.", 61909)
    elseif HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==11 then
        SetStepComplete(Spawn,5864,11)
        Quest = GetQuest(Spawn,5864)
        GiveQuestItem(Quest, Spawn, "Valthun has given you an old chandelier. At least it will brighten up the place.", 61909)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddDialog("Oh ... uh, nothing special.  I was ... uh ... putting up this chandelier for you.  I bought a new one, and I thought this old one would brighten up your home.  Perhaps you can hang it somewhere special.")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun010.mp3", 3386970796, 557685294)
	Dialog.AddOption("Hmmm... I guess so.  I also have a question for you when I'm done.")
	Dialog.Start()
end

-------DIALOG 6

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	SpawnSet(NPC,"mood_state","0")
	Dialog.AddDialog("Well, I'm done here.  Now, before I leave, you had a question ...")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun011.mp3", 138919413, 3715601776)
	Dialog.AddOption("Why can't I go into the city gates?","Dialog6a")
	Dialog.Start()
end

function Dialog6a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)
	SpawnSet(NPC,"mood_state","11852")
	Dialog.AddDialog("Why can't you go into the city gates?! I'll tell you why! Because you're a refugee, idiot! By our Lord's decree, only citizens may enter the city gates. Others who enter shall face the consequence of breaking the Overlord's laws. Friends or family may care about your well being, but in our city, you live and die by the laws of Freeport. Get used to it.")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun012.mp3", 787996548, 2478588401)
	Dialog.AddOption("How do I become a citizen?  Answer my question or suffer the consequences.","Dialog6b")
	Dialog.Start()
end

function Dialog6b(NPC, Spawn)
    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==12 then
    SetStepComplete(Spawn,5859,12)
    elseif HasQuest(Spawn,5860) and GetQuestStep(Spawn,5860)==12 then
    SetStepComplete(Spawn,5860,12)
    elseif HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==12 then
    SetStepComplete(Spawn,5861,12)
    elseif HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==12 then
    SetStepComplete(Spawn,5862,12)
    elseif HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==12 then
    SetStepComplete(Spawn,5863,12)
    elseif HasQuest(Spawn,5864) and GetQuestStep(Spawn,5864)==12 then
    SetStepComplete(Spawn,5864,12)
    end
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn)
	SpawnSet(NPC,"mood_state","0")
	Dialog.AddDialog("Fine, fine! It's your funeral, fool. Now, give me your stupid journal. I'll write down the name of the person who can tell you how to become a citizen.  Now, I've answered your questions, so I'll take my leave of you.  We shall not see each other again.")
	Dialog.AddVoiceover("voiceover/english/slumlord_valthun/tutorial_island02/slumlord_valthun013.mp3", 2573415341, 2897801437)
	Dialog.AddOption("I'd like to keep it that way.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end