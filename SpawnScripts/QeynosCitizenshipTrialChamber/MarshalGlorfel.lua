--[[
    Script Name    : SpawnScripts/Qeynos Citizenship Trial Chamber/MarshalGlorfel.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 05:08:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local BQCitizen = 5718
local CVQCitizen = 5719
local GQCitizen = 5720
local NQCitizen = 5721
local SCQCitizen = 5722
local WWQCitizen = 5723

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    SetTarget(NPC,Spawn)
if GetQuestStep (Spawn,BQCitizen)==3 or GetQuestStep (Spawn,CVQCitizen)==3 or GetQuestStep (Spawn,GQCitizen)==3 or GetQuestStep (Spawn,NQCitizen)==3 or GetQuestStep (Spawn,SCQCitizen)==3 or GetQuestStep (Spawn,WWQCitizen)==3 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","Ahh, yer just in time!", "hello", 0,0, Spawn)
    end
end


function LeaveRange(NPC, Spawn)
    SetTarget(NPC,nil)
end

function hailed(NPC, Spawn)
if  GetQuestStep (Spawn,BQCitizen)==3 or GetQuestStep (Spawn,CVQCitizen)==3 or GetQuestStep (Spawn,GQCitizen)==3 or GetQuestStep (Spawn,NQCitizen)==3 or GetQuestStep (Spawn,SCQCitizen)==3 or GetQuestStep (Spawn,WWQCitizen)==3  then
    Dialog1(NPC,Spawn)
elseif  GetQuestStep (Spawn,BQCitizen)==8 or GetQuestStep (Spawn,CVQCitizen)==8 or GetQuestStep (Spawn,GQCitizen)==8 or GetQuestStep (Spawn,NQCitizen)==8 or GetQuestStep (Spawn,SCQCitizen)==8 or GetQuestStep (Spawn,WWQCitizen)==8  then
    Dialog2(NPC,Spawn)
elseif GetQuestStep(Spawn,BQCitizen)<=7 and GetQuestStep(Spawn,BQCitizen)>=4 or 
    GetQuestStep(Spawn,CVQCitizen)<=7 and GetQuestStep(Spawn,CVQCitizen)>=4 or 
    GetQuestStep(Spawn,GQCitizen)<=7 and GetQuestStep(Spawn,GQCitizen)>=4 or 
    GetQuestStep(Spawn,NQCitizen)<=7 and GetQuestStep(Spawn,NQCitizen)>=4 or 
    GetQuestStep(Spawn,SCQCitizen)<=7 and GetQuestStep(Spawn,SCQCitizen)>=4 or 
    GetQuestStep(Spawn,WWQCitizen)<=7 and GetQuestStep(Spawn,WWQCitizen)>=4 then
    Dialog3(NPC,Spawn)
    DoorCheck(NPC,Spawn)

elseif HasCompletedQuest(Spawn,BQCitizen) or HasCompletedQuest(Spawn,CVQCitizen) or HasCompletedQuest(Spawn,GQCitizen) or HasCompletedQuest(Spawn,NQCitizen) or HasCompletedQuest(Spawn,SCQCitizen) or HasCompletedQuest(Spawn,WWQCitizen) then
     Dialog2(NPC,Spawn)
else
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3","Hey! You're not allowed in here!  Off with ya until you've proven yourself to complete this trial.", "glare", 1734668326, 429140096, Spawn)
end    
end

function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ya see, we got a problem with a group who decided to break away from Qeynos, and I heard of the fine things ya did  on the Island of Refuge.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel001.mp3", 1972383345, 185623710)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
    Dialog.AddOption("Who would want to do that?", "Option1A")
	Dialog.AddOption("Wouldn't they just be allowed to leave?", "Option1Aa")
	Dialog.Start()
end	
 
function Option1A(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Some people are too set in their ways to live in our open society, or else they've been lured away to Freeport by the promise of wealth that they'll never receive.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel002.mp3", 1674795503, 1640631237)
	Dialog.AddOption("[continue]", "Option1B")
	Dialog.Start()
end	

function Option1Aa (NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Of course, they're allowed to leave.  Problem is, these folks have been plottin' the murder of one of our fine citizens, and we can't have that.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel003.mp3", 932259166, 3680508066)
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddOption("[continue]", "Option1B")
	Dialog.Start()
end	

function Option1B(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These murderous scoundrels planned to slay our very own Baron Ironforge.  Though their plans never came to fruition, Baron Ironforge still lives due only to the heroics of one of Qeynos' fine adventuring companies and a keg of imported halfling ale.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel004.mp3", 1462903596, 2724798765)
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
	Dialog.AddOption("Which company was it?", "Option1C")
	Dialog.Start()
end	

function Option1C(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Twas the great Halfer's Company.  Not a one among 'em that's not a halfling or half elf.  Strange lot, indeed!  At any rate, we need to teach these ruffians a lesson.  We'll leave this to yer judgment, if you can return the senses to any of these traitors, by all means, do so.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel005.mp3", 3056107447, 1822754190)
	Dialog.AddOption("By judgment, you mean save who I can and kill the rest?", "Option1D")
	Dialog.AddOption("They're all guilty of treason and will pay the price.", "Option1Fa")
	Dialog.Start()
end	

function Option1D(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's right!  Those who mean ill will to our people mustn't live, even if they're off to Freeport.  It's your job to succeed where one of our knights failed.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel006.mp3", 3980894706, 4254118210)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I will not disappoint.", "Option1E")
	Dialog.Start()
end	

function Option1E(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, what's the first thing ya do when ye come across one of em?")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel008.mp3", 344841247, 3075235208)
	Dialog.AddOption("Speak with them, and convince them of the error of their ways.", "Option1F")
	Dialog.AddOption("A little bit of torture serves them right!", "Option1Fa")
	Dialog.AddOption("Kill them!", "Option1Fb")
	Dialog.Start()
end	

function Option1Fa(NPC,Spawn) --Evil
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whoa, now!  Ya sound a bit like the enemy.  Be careful that when yer meting out yer judgment that ya don't become like those yer fixin' to judge.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel007.mp3", 3117666178, 1750353665)
    PlayFlavor(NPC,"","","wince",0,0,Spawn)
	Dialog.AddOption("And I'll make sure they suffer a slow and painful death for what they've done.", "Option1Fb")
	Dialog.AddOption("Sound advice.", "Option1F")
	Dialog.Start()
end	

function Option1Fb(NPC,Spawn) --Evil Fail
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I think you got more to learn before you're ready to become a citizen of the city.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel010.mp3", 799396705,3625137136)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Noooo!  I'm ready now!")
	Dialog.Start()
    AddTimer(NPC,4500,"FailureExit",1,Spawn)
end	



function Option1F(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I think ya got it!  Let it be known, you got the full backing of the law, if push comes to shove.  We'll understand if you can't make them see the light of reason, just so long as ya give it a shot.  If you can prove yourself here, we'll welcome you, with open arms,  into the city as a citizen!")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel009.mp3", 882916375, 603737297)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Let us begin, Marshal.")
	Dialog.Start()
	if HasQuest(Spawn,BQCitizen) then
	SetStepComplete(Spawn,BQCitizen,3)
	elseif HasQuest(Spawn,CVQCitizen) then
 	SetStepComplete(Spawn,CVQCitizen,3)
	elseif HasQuest(Spawn,GQCitizen) then
 	SetStepComplete(Spawn,GQCitizen,3)
	elseif HasQuest(Spawn,NQCitizen) then
 	SetStepComplete(Spawn,NQCitizen,3)
	elseif HasQuest(Spawn,SCQCitizen) then
 	SetStepComplete(Spawn,SCQCitizen,3)
	elseif HasQuest(Spawn,WWQCitizen) then
 	SetStepComplete(Spawn,WWQCitizen,3)
 	end
     if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==13 then
    SetStepComplete(Spawn,5760,13)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==13 then
    SetStepComplete(Spawn,5761,13)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==13 then
    SetStepComplete(Spawn,5762,13)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==13 then
    SetStepComplete(Spawn,5763,13)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==13 then
    SetStepComplete(Spawn,5764,13)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==13 then
    SetStepComplete(Spawn,5765,13)
    end
 
 	DoorCheck(NPC,Spawn)
end	

function DoorCheck(NPC,Spawn)
    Door = GetSpawn(NPC,22101355)
    if Door ~= nil then
    Despawn(Door)
    end
end

function Dialog2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done!  Ya proved yourself worthy of being a citizen!  You can enter the city through that other door if ya wish!  Course, all the other gates will be open too ya as well!")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel013.mp3", 3736500157, 2254163136)
    PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddOption("I'm just glad I could serve Qeynos.")
	Dialog.AddOption("As a citizen, what can I do now?", "Option2A")
	Dialog.Start()
	if HasQuest(Spawn,BQCitizen) then
	SetStepComplete(Spawn,BQCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO QEYNOS
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,CVQCitizen) then
 	SetStepComplete(Spawn,CVQCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO QEYNOS
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,GQCitizen) then
 	SetStepComplete(Spawn,GQCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO QEYNOS
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,NQCitizen) then
 	SetStepComplete(Spawn,NQCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO QEYNOS
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,SCQCitizen) then
 	SetStepComplete(Spawn,SCQCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO QEYNOS
       AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,WWQCitizen) then
 	SetStepComplete(Spawn,WWQCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO QEYNOS
        AddTimer(NPC,500,"Citizen",1,Spawn)
	end

    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==14 then
    SetStepComplete(Spawn,5760,14)
    elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==14 then
    SetStepComplete(Spawn,5761,14)
    elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==14 then
    SetStepComplete(Spawn,5762,14)
    elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==14 then
    SetStepComplete(Spawn,5763,14)
    elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==14 then
    SetStepComplete(Spawn,5764,14)
    elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==14 then
    SetStepComplete(Spawn,5765,14)
    end
end	
 
 function Citizen(NPC,Spawn)
    SendMessage(Spawn, "You are now a Citizen of Qeynos!","yellow")
    SendPopUpMessage(Spawn, "You are now a Citizen of Qeynos!",250,250,250)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    ApplySpellVisual(Spawn, 323)
end

function Option2A(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If yer lookin' for people to help, there are plenty of 'em within the city gates with things for ya to do!")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel014.mp3", 3906614612, 3182552932)
	Dialog.AddOption("Thanks, I'll see what I can find.","Done")
	Dialog.Start()
end	

function Dialog3(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What're ya waiting for?  Their judgment awaits!")
    PlayFlavor(NPC, "","", "no", 0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel011.mp3", 0, 0)
	Dialog.AddOption("Ok, ok!")
	Dialog.Start()
end	

function Done(NPC,Spawn)
    PlayFlavor(NPC,"","","salute",0,0,Spawn)
end

function FailureExit(NPC,Spawn)
        if GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
      BBShire = GetZone("Baubbleshire")
       Zone(BBShire,Spawn,819.46, -20.60, -525.61, 200.47)
       
    elseif GetRace(Spawn)== 0 or GetRace(Spawn)== 2 then
        Gray = GetZone("graystone")
        Zone(Gray,Spawn,865.03, -25.45, -97.91, 357.68)
        
    elseif GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then
        CV = GetZone("castleview")
        Zone(CV,Spawn,729.01, -21.10, -124.36, 290.81)
        
    elseif GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then
        Net = GetZone("nettleville")
        Zone(Net,Spawn,670.07, -20.39, 273.85, 114.78)
        
    elseif GetRace(Spawn)== 3 or GetRace(Spawn)== 8 then
        SC = GetZone("starcrest")
        Zone(SC,Spawn,704.07, -20.38, 264.40, 269.84)
        
    elseif GetRace(Spawn)== 15 or GetRace(Spawn)== 16 or GetRace(Spawn)== 6 then
        WW = GetZone("willowwood")
        Zone(WW,Spawn,809.96, -21.30, -566.02, 323.13)
        
    else
        Net = GetZone("nettleville")
        Zone(Net,Spawn,670.07, -20.39, 273.85, 114.78)
    end
end