--[[
	Script Name	: SpawnScripts/Castleview/TaneranthalisNedaiveren.lua
	Script Purpose	: Taneranthalis Nedaiveren 
	Script Author	: Dorbin
	Script Date	:      2022.01.26
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Jewel = 5459 

function spawn(NPC)
ProvidesQuest(NPC, Jewel)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange (NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    GoodFactionEmotes(NPC, Spawn, faction)
    else    
     if math.random(1, 100) <= 66 then
        if not HasQuest (Spawn, Jewel) and not HasCompletedQuest(Spawn, Jewel) then
        local Lista = GetSpawn(NPC,2360011)    
        local choice = MakeRandomInt(1, 3)
        if choice == 1 then
            FaceTarget(NPC,Spawn)
	       	PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_callout_b8c9bef.mp3", "Please be at ease.  Though we stand outside the great gates of the city proper, you are as safe in Castleview as anywhere in Norrath!", "agree", 4095321012, 2558651917, Spawn)
	   elseif choice == 2 then
	        FaceTarget(NPC,Spawn)
	       	PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_callout_b8c9bef.mp3", "Please be at ease.  Though we stand outside the great gates of the city proper, you are as safe in Castleview as anywhere in Norrath!", "agree", 4095321012, 2558651917, Spawn)
        else
            FaceTarget(NPC,Spawn)
            PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_multhail2_c2e4d5a7.mp3", "It seems like just yesterday I was a small child brought to Qeynos from Felwithe. Though its white towers are but a distant memory, the Koada'dal in Castleview keep the elven spirit alive", "", 2103458666, 2948247370, Spawn)
        end
        else 
            FaceTarget(NPC,Spawn)
	        PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
        	if Lista ~=nil then
            FaceTarget(Lista,Spawn)
            end	        
        end
      end
    end
end

function hailed(NPC, Spawn)
local Lista = GetSpawn(NPC,2360011)    
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else	
	if Lista ~=nil then
    FaceTarget(Lista,Spawn)
    end
    
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It seems like yesterday... I was just a child when I was brought to Qeynos from Felwithe.  Though its white towers are but a distant memory, the Koada'Dal here in Castleview keep the elven spirit alive.")
	Dialog.AddVoiceover("voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren000.mp3",1954171614, 860807179)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
        if not HasQuest (Spawn, Jewel) and not HasCompletedQuest(Spawn, Jewel) and GetLevel(Spawn) >=7  then
        Dialog.AddOption("Surely you can't be old enough to remember Felwithe!", "Old")
        elseif GetQuestStep(Spawn, Jewel)==2 then
        Dialog.AddOption("I've brought back the box from Tara.","Delievered")
        end        
        Dialog.AddOption("Castleview is a sight to behold, indeed.")
        Dialog.AddOption("I'm not much one for reminiscing.")
        Dialog.Start()
    end
end


 function Old(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am older than you think. I've walked the earth for more than three centuries. My age brings to light that I've not chosen a life partner. Of late, Listalania and I are getting closer. Perhaps the time is nigh for me to seek her hand... Hmmmmm, would you do me a favor?")
	Dialog.AddVoiceover("voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren001.mp3",1601004679, 425254120)
 	PlayFlavor(NPC, "", "", "orate", 0,0 , Spawn)
    Dialog.AddOption("I believe I can aid you.", "Package")
    Dialog.AddOption("Unfortunately, I'm busy.")
    Dialog.Start()
end   


 function Delievered(NPC, Spawn)
    SetStepComplete(Spawn, Jewel, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank you. I'm not certain when I'll ask Listalania, but now I'm prepared for when that time comes. You've done me a great service. Please accept these coins as a token of my gratitude.")
	Dialog.AddVoiceover("voiceover/english/taneranthalis_nedaiveren/qey_village04/qst_taneranthalisnedaiveren003.mp3",3530480629, 3338631885)
 	PlayFlavor(NPC, "", "", "bow", 0,0 , Spawn)
    Dialog.AddOption("I wish you all the best in the future.")
    Dialog.Start()
end   

function Package (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Jewel)
end



