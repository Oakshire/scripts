--[[
    Script Name    : SpawnScripts/Qeynos2Room1/CaretakerFairlee.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.28 08:08:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
    SetRequiredQuest(NPC, 5760, 1, 1) --BAUBBLESHIRE
    SetRequiredQuest(NPC, 5760, 2, 1)   
    SetRequiredQuest(NPC, 5760, 3, 1)   
    SetRequiredQuest(NPC, 5760, 4, 1)   
    SetRequiredQuest(NPC, 5760, 5, 1)   
    SetRequiredQuest(NPC, 5760, 6, 1)   
    SetRequiredQuest(NPC, 5760, 7, 1)   
    SetRequiredQuest(NPC, 5760, 11, 1)   
    SetRequiredQuest(NPC, 5760, 12, 1)   
    SetRequiredQuest(NPC, 5760, 13, 1) 
    
    SetRequiredQuest(NPC, 5761, 1, 1) --WILLOW WOOD
    SetRequiredQuest(NPC, 5761, 2, 1)   
    SetRequiredQuest(NPC, 5761, 3, 1)   
    SetRequiredQuest(NPC, 5761, 4, 1)   
    SetRequiredQuest(NPC, 5761, 5, 1)   
    SetRequiredQuest(NPC, 5761, 6, 1)   
    SetRequiredQuest(NPC, 5761, 7, 1)   
    SetRequiredQuest(NPC, 5761, 11, 1)   
    SetRequiredQuest(NPC, 5761, 12, 1)   
    SetRequiredQuest(NPC, 5761, 13, 1)    

    SetRequiredQuest(NPC, 5762, 1, 1) --STARCREST
    SetRequiredQuest(NPC, 5762, 2, 1)   
    SetRequiredQuest(NPC, 5762, 3, 1)   
    SetRequiredQuest(NPC, 5762, 4, 1)   
    SetRequiredQuest(NPC, 5762, 5, 1)   
    SetRequiredQuest(NPC, 5762, 6, 1)   
    SetRequiredQuest(NPC, 5762, 7, 1)   
    SetRequiredQuest(NPC, 5762, 11, 1)   
    SetRequiredQuest(NPC, 5762, 12, 1)   
    SetRequiredQuest(NPC, 5762, 13, 1)  

    SetRequiredQuest(NPC, 5763, 1, 1) --NETTLEVILLE
    SetRequiredQuest(NPC, 5763, 2, 1)   
    SetRequiredQuest(NPC, 5763, 3, 1)   
    SetRequiredQuest(NPC, 5763, 4, 1)   
    SetRequiredQuest(NPC, 5763, 5, 1)   
    SetRequiredQuest(NPC, 5763, 6, 1)   
    SetRequiredQuest(NPC, 5763, 7, 1)   
    SetRequiredQuest(NPC, 5763, 11, 1)   
    SetRequiredQuest(NPC, 5763, 12, 1)   
    SetRequiredQuest(NPC, 5763, 13, 1) 

    SetRequiredQuest(NPC, 5764, 1, 1) --GRAYSTONE
    SetRequiredQuest(NPC, 5764, 2, 1)   
    SetRequiredQuest(NPC, 5764, 3, 1)   
    SetRequiredQuest(NPC, 5764, 4, 1)   
    SetRequiredQuest(NPC, 5764, 5, 1)   
    SetRequiredQuest(NPC, 5764, 6, 1)   
    SetRequiredQuest(NPC, 5764, 7, 1)   
    SetRequiredQuest(NPC, 5764, 11, 1)   
    SetRequiredQuest(NPC, 5764, 12, 1)   
    SetRequiredQuest(NPC, 5764, 13, 1) 

    SetRequiredQuest(NPC, 5765, 1, 1) --CASTLEVIEW
    SetRequiredQuest(NPC, 5765, 2, 1)   
    SetRequiredQuest(NPC, 5765, 3, 1)   
    SetRequiredQuest(NPC, 5765, 4, 1)   
    SetRequiredQuest(NPC, 5765, 5, 1)   
    SetRequiredQuest(NPC, 5765, 6, 1)   
    SetRequiredQuest(NPC, 5765, 7, 1)   
    SetRequiredQuest(NPC, 5765, 11, 1)   
    SetRequiredQuest(NPC, 5765, 12, 1)   
    SetRequiredQuest(NPC, 5765, 13, 1) 
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==2 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==2 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==2 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==2 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==2 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==2 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/caretaker_fairlee/qey_ph_1r01/100_city_caretaker_fairlee_housing_callout1_bd9d430e.mp3", "You must be the new tenant.  Allow me to introduce myself.", "hello", 90341496, 1787511893, Spawn)
elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==5 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==5 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==5 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==5 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==5 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==5 then
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/caretaker_fairlee/qey_ph_1r01/100_city_caretaker_fairlee_housing_callout2_245e1e60.mp3", "Perfect timing!  I was hoping you'd be back about now!", "nod", 1399879843, 3585568022, Spawn)
 elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==11 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==11 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==11 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==11 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==11 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==11 then
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/caretaker_fairlee/qey_ph_1r01/100_city_caretaker_fairlee_housing_callout3_ce5b5490.mp3", "There... that should just about do it.", "nod", 2665995219, 2254532534, Spawn)
   end 
end


function hailed(NPC, Spawn)
if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==2 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==2 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==2 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==2 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==2 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==2 then
Dialog1 (NPC,Spawn)  --GET FURNITURE 1

elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==3 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==3 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==3 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==3 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==3 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==3 then
    if HasItem(Spawn,61915,1) then --CHECK IF HAS TABLE (FURNITURE1)
    continue1(NPC, Spawn) --STILL NEED TO PLACE FURNITURE 1
    else
    Dialog2(NPC,Spawn) --SPEAK WITH BANKER
    end
elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==4 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==4 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==3 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==4 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==4 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==4 then
    Dialog2(NPC, Spawn) --SPEAK WITH BANKER


elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==5 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==5 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==5 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==5 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==5 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==5 then
    Dialog3(NPC,Spawn) --GET FURNITURE 2
    
elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==6 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==6 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==6 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==6 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==6 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==6 then
    if HasItem(Spawn,61914,1) then --CHECK IF HAS PAINTING (FURNITURE2)
    Dialog3(NPC,Spawn) --STILL NEED TO PLACE FURNITURE 2
    else
    Dialog4(NPC,Spawn) --FIND LOCATIONS
    end  
    
elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==7 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==7 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==6 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==7 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==7 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==7 then
    Dialog4b(NPC, Spawn) --IF ALREADY ON THE TASK TO FIND LOCATIONS.  CARETAKER DISAPPEARS UNTIL ON THE FINAL STEPS.

 elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==11 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==11 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==11 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==11 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==11 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==11 then
    Dialog5(NPC,Spawn) -- GET FURNITURE 3  
 
 elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==12 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==12 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==12 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==12 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==12 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==12 then
     if HasItem(Spawn,61909,1) then --CHECK IF HAS CHANDELIER (FURNITURE3)
    Dialog5a(NPC,Spawn) --STILL NEED TO PLACE FURNITURE 3
    else
    Dialog6(NPC,Spawn) --START CITIZENSHIP TRIAL
    end   
elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==13 or HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==13 or HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==13 or HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==13 or HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==13 or HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==13 then
 Dialog6b(NPC, Spawn)
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("I'm the caretaker of these apartments, and I'm to see to it that you're settled in to your new place.  I know it may not look like much right now, but with all the refugees coming in on a daily basis, this is about all we can do.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee001.mp3", 3717538538, 588872219)
	Dialog.AddOption("It's more than I could have ever expected.  Thank you!", "AllWeCanDo")
	Dialog.Start()
end

function AllWeCanDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Think nothing of it. Let me go over a few rules about the place: Pets must be house trained. If guests stay longer than a month, please let us know. Finally, please ask any visiting bards to sing quietly at night -- some people go to sleep early around here.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee002.mp3", 4044688594, 3625376816)
	Dialog.AddOption("[continue]", "continue1")
	Dialog.Start()
end

function continue1(NPC, Spawn)

    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==2 then
    SetStepComplete(Spawn,5760,2)
        Quest = GetQuest(Spawn,5760)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Ironforge Exchange. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==2 then
    SetStepComplete(Spawn,5761,2)
        Quest = GetQuest(Spawn,5761)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Ironforge Exchange. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==2 then
    SetStepComplete(Spawn,5762,2)
        Quest = GetQuest(Spawn,5762)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Ironforge Exchange. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==2 then
    SetStepComplete(Spawn,5763,2)
        Quest = GetQuest(Spawn,5763)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Ironforge Exchange. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==2 then
    SetStepComplete(Spawn,5764,2)
        Quest = GetQuest(Spawn,5764)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Ironforge Exchange. Decorate your inn room with it.", 61915)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==2 then
    SetStepComplete(Spawn,5765,2)
        Quest = GetQuest(Spawn,5765)
    GiveQuestItem(Quest, Spawn, "A welcome gift from The Ironforge Exchange. Decorate your inn room with it.", 61915)
    end
        
 
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("Oh, I almost forgot! The Ironforge Exchange has a welcome gift for you. It's a piece of furniture to liven up your home. Go ahead and put it wherever you want.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee003.mp3", 3943554629, 4275156589)
	Dialog.AddOption("Thank you.  Let me place it now.")
	Dialog.Start()
end


-------DIALOG 2

function Dialog2(NPC, Spawn)
    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==3 then
    SetStepComplete(Spawn,5760,3)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==3 then
    SetStepComplete(Spawn,5761,3)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==3 then
    SetStepComplete(Spawn,5762,3)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==3 then
    SetStepComplete(Spawn,5763,3)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==3 then
    SetStepComplete(Spawn,5764,3)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==3 then
    SetStepComplete(Spawn,5765,3)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Ahh ... much better, that brightens up the place. I know the Exchange artisans look forward to your future business. Speaking of business, an account is open for you at the bank. Go let the banker know you're here. Now, I must help other refugees settle in.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee004.mp3", 2742172241, 941626191)
	Dialog.AddOption("Thank you for your time, caretaker.")
	Dialog.Start()
end

-------DIALOG 3
function Dialog3(NPC, Spawn)
    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==5 then
        SetStepComplete(Spawn,5760,5)
        Quest = GetQuest(Spawn,5760)
        GiveQuestItem(Quest, Spawn, "A gift from Ms. Farilee to brighten up your home.", 61914)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==5 then
        SetStepComplete(Spawn,5761,5)
        Quest = GetQuest(Spawn,5761)
        GiveQuestItem(Quest, Spawn, "A gift from Ms. Farilee to brighten up your home.", 61914)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==5 then
        SetStepComplete(Spawn,5762,5)
        Quest = GetQuest(Spawn,5762)
        GiveQuestItem(Quest, Spawn, "A gift from Ms. Farilee to brighten up your home.", 61914)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==5 then
        SetStepComplete(Spawn,5763,5)
        Quest = GetQuest(Spawn,5763)
        GiveQuestItem(Quest, Spawn, "A gift from Ms. Farilee to brighten up your home.", 61914)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==5 then
        SetStepComplete(Spawn,5764,5)
        Quest = GetQuest(Spawn,5764)
        GiveQuestItem(Quest, Spawn, "A gift from Ms. Farilee to brighten up your home.", 61914)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==5 then
        SetStepComplete(Spawn,5765,5)
        Quest = GetQuest(Spawn,5765)
        GiveQuestItem(Quest, Spawn, "A gift from Ms. Farilee to brighten up your home.", 61914)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Your place looked sparse and barren, so I brought you a painting from my home. It's a family heirloom, but being new to the city, I thought you'd appreciate it. Consider it a \"Welcome to Qeynos\" gift. Please put it up. I want to see how it looks in your new home!")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee005.mp3", 1427721358, 4217975268)
	Dialog.AddOption("It looks nice!  I'll put it up right now!")
	Dialog.Start()
end

-------DIALOG 4
function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddDialog("Wow! That looks wonderful in your room! That painting is full of history ... yes, indeed, full of history.  Now, what will you be doing for work in Qeynos, friend?")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee006.mp3", 4251128224, 1285165397)
	Dialog.AddOption("I'm not sure, do  you have any suggestions?","Dialog4a")
	Dialog.Start()
end

function Dialog4a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Vermin lurk in the city.  I know some refugees earn coin ridding the catacombs of these nasty creatures, while others patrol the outskirts of the city for the beasts. Hunting the vermin would help Qeynos and add coin to your pocket.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee007.mp3", 3930690417, 79244237)
	Dialog.AddOption("Where would I find these places?", "Dialog4b")
	Dialog.Start()
end

function Dialog4b(NPC, Spawn)
    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==6 then
    SetStepComplete(Spawn,5760,6)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==6 then
    SetStepComplete(Spawn,5761,6)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==6 then
    SetStepComplete(Spawn,5762,6)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==6 then
    SetStepComplete(Spawn,5763,6)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==6 then
    SetStepComplete(Spawn,5764,6)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==6 then
    SetStepComplete(Spawn,5765,6)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Unfortunately, vermin are all over the city, but you should see for yourself. If you don't mind, I'll borrow your journal and write down directions. Follow my instructions and familiarize yourself with the area. In the mean time, I'll patch up a crack I found in your ceiling.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee008.mp3", 1486099295, 409795954)
	Dialog.AddOption("That sounds like a good idea.  I'll be back soon!")
	Dialog.Start()
end

-------DIALOG 5

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("That crack won't bother you anymore. I must say, nothing is worse than a leaky roof! By the way, your neighbors brought you a housewarming present.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee009.mp3", 2517544532, 3349303577)
	Dialog.AddOption("That was really nice of them.  What is it?","Dialog5a")
	Dialog.Start()
end

function Dialog5a(NPC, Spawn)

    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==11 then
        SetStepComplete(Spawn,5760,11)
        Quest = GetQuest(Spawn,5760)
        GiveQuestItem(Quest, Spawn, "Your neighbors have sent you this gift.  Place it on the ceiling to brighten up your home.", 61909)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==11 then
        SetStepComplete(Spawn,5761,11)
        Quest = GetQuest(Spawn,5761)
        GiveQuestItem(Quest, Spawn, "Your neighbors have sent you this gift.  Place it on the ceiling to brighten up your home.", 61909)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==11 then
        SetStepComplete(Spawn,5762,11)
        Quest = GetQuest(Spawn,5762)
        GiveQuestItem(Quest, Spawn, "Your neighbors have sent you this gift.  Place it on the ceiling to brighten up your home.", 61909)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==11 then
        SetStepComplete(Spawn,5763,11)
        Quest = GetQuest(Spawn,5763)
        GiveQuestItem(Quest, Spawn, "Your neighbors have sent you this gift.  Place it on the ceiling to brighten up your home.", 61909)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==11 then
        SetStepComplete(Spawn,5764,11)
        Quest = GetQuest(Spawn,5764)
        GiveQuestItem(Quest, Spawn, "Your neighbors have sent you this gift.  Place it on the ceiling to brighten up your home.", 61909)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==11 then
        SetStepComplete(Spawn,5765,11)
        Quest = GetQuest(Spawn,5765)
        GiveQuestItem(Quest, Spawn, "Your neighbors have sent you this gift.  Place it on the ceiling to brighten up your home.", 61909)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddDialog("It's a chandelier to lighten up the place and a fine one at that!  I would put it up for you, but you have better decorating taste than I do. Here it is.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee010.mp3", 1059075961, 4003557356)
	Dialog.AddOption("I think I'll put it up right now.")
	Dialog.Start()
end

-------DIALOG 6

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("That chandelier looks splendid.  Well, friend, that's all I can do for you. Let me know if you need something fixed. Now, do you have any questions?")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee011.mp3", 912970991, 3975181220)
	Dialog.AddOption("Yes.  One of the guards told me I couldn't go into the city.  Do you know why?","Dialog6a")
	Dialog.Start()
end

function Dialog6a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Only citizens can enter the city proper, friend.  It's nothing personal mind you, just a way to keep chaos from breaking out.  The Queen set up these homes in the villages for newly arrived refugees, but she tries to keep the traffic down in the main part of the city.  If you're interested, you can apply for citizenship.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee012.mp3", 1081515188, 3157929176)
	Dialog.AddOption("How would I go about applying for citizenship?","Dialog6b")
	Dialog.Start()
end

function Dialog6b(NPC, Spawn)
    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==12 then
    SetStepComplete(Spawn,5760,12)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==12 then
    SetStepComplete(Spawn,5761,12)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==12 then
    SetStepComplete(Spawn,5762,12)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==12 then
    SetStepComplete(Spawn,5763,12)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==12 then
    SetStepComplete(Spawn,5764,12)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==12 then
    SetStepComplete(Spawn,5765,12)
    end
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Well, first, you must prove that you will contribute to Qeynos.  Let me see your journal.  There ... I wrote down the name of the person who can tell you about obtaining citizenship. I'm off now.  It was a pleasure meeting you, friend.")
	Dialog.AddVoiceover("voiceover/english/caretaker_fairlee/tutorial_island02/caretaker_fairlee013.mp3", 3396172107, 728027367)
	Dialog.AddOption("And the same to you, caretaker!")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end