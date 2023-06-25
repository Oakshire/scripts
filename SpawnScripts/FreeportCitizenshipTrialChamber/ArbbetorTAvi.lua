--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/ArbbetorTAvi.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.22 06:06:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local BBFCitizen  = 5860 
local Beg_FCitizen   = 5861
local LA_FCitizen = 5862
local Scale_FCitizen  = 5863
local Stone_FCitizen  = 5859
local Temp_FCitizen = 5864

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    SetTarget(NPC,Spawn)
if GetQuestStep (Spawn,BBFCitizen )==3 or GetQuestStep (Spawn,Beg_FCitizen  )==3 or GetQuestStep (Spawn,LA_FCitizen)==3 or GetQuestStep (Spawn,Scale_FCitizen )==3 or GetQuestStep (Spawn,Stone_FCitizen )==3 or GetQuestStep (Spawn,Temp_FCitizen)==3 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetor_tavi_callout_5ab3b4e6.mp3","Hey you! Get over here!", "point", 3348850018,53224247, Spawn)
    end
end


function LeaveRange(NPC, Spawn)
    SetTarget(NPC,nil)
end

function hailed(NPC, Spawn)
    DoorCheck(NPC,Spawn)
if  GetQuestStep (Spawn,BBFCitizen )==3 or GetQuestStep (Spawn,Beg_FCitizen  )==3 or GetQuestStep (Spawn,LA_FCitizen)==3 or GetQuestStep (Spawn,Scale_FCitizen )==3 or GetQuestStep (Spawn,Stone_FCitizen )==3 or GetQuestStep (Spawn,Temp_FCitizen)==3  then
    Dialog1(NPC,Spawn)
elseif  GetQuestStep (Spawn,BBFCitizen )==8 or GetQuestStep (Spawn,Beg_FCitizen  )==8 or GetQuestStep (Spawn,LA_FCitizen)==8 or GetQuestStep (Spawn,Scale_FCitizen )==8 or GetQuestStep (Spawn,Stone_FCitizen )==8 or GetQuestStep (Spawn,Temp_FCitizen)==8  then
    Dialog2(NPC,Spawn)
elseif GetQuestStep(Spawn,BBFCitizen )<=7 and GetQuestStep(Spawn,BBFCitizen )>=4 or 
    GetQuestStep(Spawn,Beg_FCitizen  )<=7 and GetQuestStep(Spawn,Beg_FCitizen  )>=4 or 
    GetQuestStep(Spawn,LA_FCitizen)<=7 and GetQuestStep(Spawn,LA_FCitizen)>=4 or 
    GetQuestStep(Spawn,Scale_FCitizen )<=7 and GetQuestStep(Spawn,Scale_FCitizen )>=4 or 
    GetQuestStep(Spawn,Stone_FCitizen )<=7 and GetQuestStep(Spawn,Stone_FCitizen )>=4 or 
    GetQuestStep(Spawn,Temp_FCitizen)<=7 and GetQuestStep(Spawn,Temp_FCitizen)>=4 then
    Dialog3(NPC,Spawn)
    DoorCheck(NPC,Spawn)

elseif HasCompletedQuest(Spawn,BBFCitizen ) or HasCompletedQuest(Spawn,Beg_FCitizen  ) or HasCompletedQuest(Spawn,LA_FCitizen) or HasCompletedQuest(Spawn,Scale_FCitizen ) or HasCompletedQuest(Spawn,Stone_FCitizen ) or HasCompletedQuest(Spawn,Temp_FCitizen) then
     Dialog2(NPC,Spawn)
else
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_48350e59.mp3","You're not allowed in here!  Off with you until you've proven yourself to complete this trial.", "glare", 3405287024, 2122169059, Spawn)
end    
end


function DoorCheck(NPC,Spawn)
    Door = GetSpawn(NPC,1640023)
    if Door ~= nil then
    Despawn(Door)
    end
    local zone = GetZone(NPC)
    if GetSpawnByLocationID(zone,133785371) ~=nil then
    Despawn(GetSpawnByLocationID(zone,133785371))
    end
end

function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, well... I've been expecting you. You're not quite what I hoped, given T'Kirr's glowing recommendation, but you'll do.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi001.mp3", 1917752715, 2073406033)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
    Dialog.AddOption("Do?  What do you mean?", "Option1A")
	Dialog.Start()
end	
 

function Option1A (NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're here to become a citizen, aren't you?")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi002.mp3", 2786599552, 1370339276)
    PlayFlavor(NPC,"","","",0,0,Spawn)
	Dialog.AddOption("Of course.", "Option1B")
	Dialog.Start()
end	

function Option1B(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then stop talking and start listening.  The Overlord has little time for those who don't know when to hold their tongue.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi003.mp3", 543002968, 1965375267)
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddOption("Well, then make me a citizen already!", "Option1Fb")
	Dialog.AddOption("...", "Option1C")
	Dialog.Start()
end	

function Option1C(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see you learn quickly.  Now let's move on.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi005.mp3", 194269005, 133004706)
	Dialog.AddOption("[continue]", "Option1D")
	Dialog.Start()
end	

function Option1D(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've discovered a den of traitorous dogs that must be punished.  The Overlord's will cannot be questioned. These beasts must suffer a terrible fate.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi006.mp3", 476682468, 1543848106)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I am to interrorgate them? Kill them, perhaps?", "Option1E")
	Dialog.AddOption("What do I get out of this?", "Option1Ea")
	Dialog.Start()
end	

function Option1Ea(NPC,Spawn) --Evil
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The honor of living among the elite, the citizens of Freeport. And, of course, you get to move out of this pit and away from the refugee trash, though with your attitude...")
--	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi004.mp3", 922126162, 3879014430)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	Dialog.AddOption("I just don't understand why I should do YOUR job!", "Option1Fb")
	Dialog.AddOption("[continue]", "Option1F")
	Dialog.Start()
end	

function Option1E(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed you are.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi007.mp3", 1995736381, 541616666)
	Dialog.AddOption("[Continue]", "Option1F")
	Dialog.Start()
end	



function Option1F(NPC,Spawn) 
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As I was saying ... We ... err... I will determine your worth by how you take care of these misguided fools.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi006.mp3", 2699197105, 566046082)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I am ready to serve my Overlord.", "Option1C")
	Dialog.Start()
end	


function Option1Fa(NPC,Spawn) --Evil
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Or you'll what? The Overlord brooks no insolence and neither do I.  You'll find little tolerance for back talk here.  Let's get on with this.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi004.mp3", 922126162, 3879014430)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	Dialog.AddOption("No one tells me what to do! My greatness knows no bounds!", "Option1Fb")
	Dialog.AddOption("[Listen quietly]", "Option1C")
	Dialog.Start()
end	

function Option1Fb(NPC,Spawn) --Evil Fail
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fool! The Overlord is watching you as we speak.")
	Dialog.AddVoiceover("voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_e5838bd0.mp3", 644059683, 1813641447)
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddOption("Ummm... I should be going.")
	Dialog.Start()
	SendPopUpMessage(Spawn,"The Overlord finds your obedience lacking.")
    AddTimer(NPC,4500,"FailureExit",1,Spawn)
end	



function Option1F(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go forth. Punish them as they deserve and as the Overlord commands. Your reward lies on the far side: entrance to the great city of Freeport.")
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi010.mp3", 3234477305, 2227612151)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Thank you Abbetor.")
	Dialog.Start()
	if HasQuest(Spawn,BBFCitizen ) then
	SetStepComplete(Spawn,BBFCitizen ,3)
	elseif HasQuest(Spawn,Beg_FCitizen  ) then
 	SetStepComplete(Spawn,Beg_FCitizen  ,3)
	elseif HasQuest(Spawn,LA_FCitizen) then
 	SetStepComplete(Spawn,LA_FCitizen,3)
	elseif HasQuest(Spawn,Scale_FCitizen ) then
 	SetStepComplete(Spawn,Scale_FCitizen ,3)
	elseif HasQuest(Spawn,Stone_FCitizen ) then
 	SetStepComplete(Spawn,Stone_FCitizen ,3)
	elseif HasQuest(Spawn,Temp_FCitizen) then
 	SetStepComplete(Spawn,Temp_FCitizen,3)
 	end
     if HasQuest(Spawn,5871) and GetQuestStep(Spawn,5871)==13 then
    SetStepComplete(Spawn,5865,13)
    elseif HasQuest(Spawn,5866) and GetQuestStep(Spawn,5866)==13 then
    SetStepComplete(Spawn,5866,13)
    elseif HasQuest(Spawn,5867) and GetQuestStep(Spawn,5867)==13 then
    SetStepComplete(Spawn,5867,13)
    elseif HasQuest(Spawn,5868) and GetQuestStep(Spawn,5868)==13 then
    SetStepComplete(Spawn,5868,13)
    elseif HasQuest(Spawn,5869) and GetQuestStep(Spawn,5869)==13 then
    SetStepComplete(Spawn,5869,13)
    elseif HasQuest(Spawn,5870) and GetQuestStep(Spawn,5870)==13 then
    SetStepComplete(Spawn,5870,13)
    end
end	



function Dialog2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You surprised me... Your paperwork is signed, offically making you a citizen of Freeport. Let your actions continue to prove true to the Overlord, and we won't have to meet down here again under different circumstances...")
	--Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel013.mp3", 3736500157, 2254163136)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Those traitors got what they deserved.")
	Dialog.AddOption("By The Overlord's will.")
	Dialog.AddOption("As a citizen, what can I do now?", "Option2A")
	Dialog.Start()
	if HasQuest(Spawn,BBFCitizen ) then
	SetStepComplete(Spawn,BBFCitizen ,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO FREEPORT
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,Beg_FCitizen  ) then
 	SetStepComplete(Spawn,Beg_FCitizen  ,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO FREEPORT
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,LA_FCitizen) then
 	SetStepComplete(Spawn,LA_FCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO FREEPORT
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,Scale_FCitizen ) then
 	SetStepComplete(Spawn,Scale_FCitizen ,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO FREEPORT
        AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,Stone_FCitizen ) then
 	SetStepComplete(Spawn,Stone_FCitizen ,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO FREEPORT
       AddTimer(NPC,500,"Citizen",1,Spawn)
	elseif HasQuest(Spawn,Temp_FCitizen) then
 	SetStepComplete(Spawn,Temp_FCitizen,8)
        AddSpellBookEntry(Spawn, 8057, 1) --CALL TO FREEPORT
        AddTimer(NPC,500,"Citizen",1,Spawn)
	end

    if HasQuest(Spawn,5865) and GetQuestStep(Spawn,5871)==14 then
    SetStepComplete(Spawn,5871,14)
    elseif HasQuest(Spawn,5866) and GetQuestStep(Spawn,5866)==14 then
    SetStepComplete(Spawn,5866,14)
    elseif HasQuest(Spawn,5867) and GetQuestStep(Spawn,5867)==14 then
    SetStepComplete(Spawn,5867,14)
    elseif HasQuest(Spawn,5868) and GetQuestStep(Spawn,5868)==14 then
    SetStepComplete(Spawn,5868,14)
    elseif HasQuest(Spawn,5869) and GetQuestStep(Spawn,5869)==14 then
    SetStepComplete(Spawn,5869,14)
    elseif HasQuest(Spawn,5870) and GetQuestStep(Spawn,5870)==14 then
    SetStepComplete(Spawn,5870,14)
    end
end	
 
 function Citizen(NPC,Spawn)
    SendMessage(Spawn, "You are now a Citizen of Freeport!","yellow")
    SendPopUpMessage(Spawn, "You are now a Citizen of Freeport!",250,250,250)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    ApplySpellVisual(Spawn, 324)
end

function Option2A(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll offer you one warning: Watch your step and your purse in Freeport. This city is full of questionable characters who would love to relieve you of your coin and your life. Now be on your way.")
	Dialog.AddVoiceover("voiceover/english/julie_danerous/fprt_east/100_questjuliedanerou_multhail1_6195b062.mp3", 3623154907, 3385551552)
	Dialog.AddOption("I'll keep that in mind.","Done")
	Dialog.Start()
end	


function Dialog3(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why are you speaking to me? Finish your task!")
    PlayFlavor(NPC, "","", "no", 0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/abbetor_t_avi/fprt_sewer_epic08/abbetortavi012.mp3", 3529749208, 569435182)
	Dialog.AddOption("Ok, ok!")
	Dialog.Start()
end	

function Done(NPC,Spawn)
    PlayFlavor(NPC,"","","salute_freeport",0,0,Spawn)
end

function FailureExit(NPC,Spawn)
       Race = GetRace(Spawn)
       
    if Race == 3 or Race == 11 then
      StoneS = GetZone("Stonestair")
       Zone(StoneS,Spawn,819.46, -20.60, -525.61, 200.47)
       
    elseif Race == 5 or Race == 13 then
        TempS = GetZone("TempleSt")
        Zone(TempS,Spawn,865.03, -25.45, -97.91, 357.68)
        
    elseif Race == 9 or Race == 6 then
        Beg = GetZone("BeggarsCourt")
        Zone(Beg,Spawn,729.01, -21.10, -124.36, 290.81)
        
    elseif Race == 12 or Race == 14 then
        Bend = GetZone("BigBend")
        Zone(Bend,Spawn,670.07, -20.39, 273.85, 114.78)
        
    elseif Race == 1  or Race == 19 or Race == 17 then
        Long = GetZone("Longshadow")
        Zone(Long,Spawn,704.07, -20.38, 264.40, 269.84)
        
    elseif Race == 0 or Race == 10 or Race == 18 then
        Scale = GetZone("ScaleYard")
        Zone(Scale,Spawn,809.96, -21.30, -566.02, 323.13)
        
    else
        Net = GetZone("BeggarsCourt")
        Zone(Beg,Spawn,670.07, -20.39, 273.85, 114.78)
    end
end