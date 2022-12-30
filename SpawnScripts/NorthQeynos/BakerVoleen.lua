--[[
	Script Name	: SpawnScripts/NorthQeynos/BakerVoleen.lua
	Script Purpose	: Baker Voleen <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local Fhara = 5540

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 3, "InRange", "LeaveRange")
    ProvidesQuest(NPC,Fhara)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_3d1ca473.mp3", "", "scold", 1646021457, 4149179615, Spawn)
else
if not HasQuest(Spawn,Fhara) and not HasCompletedQuest(Spawn,Fhara) then  
  	local choice = math.random(1,2)
    if math.random (1,100) <= 50 then
	FaceTarget(NPC, Spawn)    
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/baker_voleen/qey_north/100_merchant_voleen_baker_g4_multhail_f259c855.mp3", "Unless you want to buy a treat, be on your way, friend.", "", 403489438, 3022554581, Spawn)
 	elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/baker_voleen/qey_north/100_merchant_voleen_baker_g4_callout1_f0c00044.mp3", "Ahh, good day! The smell of freshly baked bread- is there anything like it? To be honest, it is why I got into this business in the first place.  Take a look around!  I'm sure you'll find a tasty treat that suits your fancy.", "happy", 730679601, 108591942, Spawn)
    end
    end
else
    if math.random (1,100) <= 60 then
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/baker_voleen/qey_north/100_merchant_voleen_baker_g4_multhail_f259c855.mp3", "Unless you want to buy a treat, be on your way, friend.", "", 403489438, 3022554581, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_1e9a743c.mp3", "Please mind the plates, they're very hot.", "scold", 1075794847, 2019936086, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 1646021457, 4149179615, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1048257184, 2248522628, Spawn)
	elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/baker_voleen/qey_north/100_merchant_voleen_baker_g4_callout1_f0c00044.mp3", "Ahh, good day! The smell of freshly baked bread- is there anything like it? To be honest, it is why I got into this business in the first place.  Take a look around!  I'm sure you'll find a tasty treat that suits your fancy.", "happy", 730679601, 108591942, Spawn)
	end
    end
end
end
end

function LeaveRange(NPC, Spawn)
end



function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddDialog("I see you enjoying my pastries.  Perhaps you can do me a small favor in exchange for a treat?")
	Dialog.AddVoiceover("voiceover/english/baker_voleen/qey_north/mer_bakervoleen.mp3", 1488479390, 237480726)
    if not HasQuest(Spawn,Fhara) and not HasCompletedQuest(Spawn,Fhara) then  
	Dialog.AddOption("Sure, that sounds great. What can I help you with?","Dialog2")
    end
    if GetQuestStep(Spawn,Fhara)==2 then  
	Dialog.AddOption("Fhara wanted to let you know that she loved the pastries!","Dialog3")
    end
    Dialog.AddOption("Sorry, just taking in the free smells.")
	Dialog.Start()
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
    else
    Dialog1(NPC, Spawn)
    end
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddDialog("How kind of you.  I need someone to bring Fhara her morning order.  If you have the time, I would appreciate you bringing it to her.")
	Dialog.AddVoiceover("voiceover/english/baker_voleen/qey_north/quests/bakervoleen/voleen_x1_initial.mp3", 4128977050, 2819913920)
    Dialog.AddOption("Sure, I'd be happy to!","Offer")
    Dialog.AddOption("Actually, I don't think I have the time.  Sorry.")
	Dialog.Start()
	end
	
function Offer(NPC, Spawn)
    OfferQuest(NPC,Spawn, Fhara)
    FaceTarget(NPC, Spawn)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddDialog("I knew she would!  For your troubles, please accept a few loaves of fresh baked bread.")
	Dialog.AddVoiceover("voiceover/english/baker_voleen/qey_north/quests/bakervoleen/voleen_x1_finish.mp3", 1749869048, 2865084547)
    Dialog.AddOption("Gladly!","Finish")
	Dialog.Start()
	end
	
function Finish(NPC, Spawn)
    SetStepComplete(Spawn,Fhara, 2)
    FaceTarget(NPC, Spawn)
end	