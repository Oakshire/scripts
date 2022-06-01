--[[
	Script Name	: SpawnScripts/SouthQeynos/Gauldry.lua
	Script Purpose	: Gauldry <Shieldsmith>
	Script Author	: Dorbin
	Script Date	: 2022.05.30
	Script Notes	: 
--]]

local snakes = 5570
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC,snakes)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
if not HasCompletedQuest(Spawn,snakes)then
    Dialog1(NPC,Spawn)
    else
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_2/ft/service/merchant/halfling_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 841946130, 955678666, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_2/ft/service/merchant/halfling_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 561391296, 3932646865, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/merchant_gauldry/qey_south/100_mer_appraisor_gauldry_hail_c65547fa.mp3", "My wares cost more than the cheap goods of the sisters in the other room, but one must pay a price for extravagance, am I right?", "", 3552991495, 1168562652, Spawn, 0)
	end
    end
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My wares cost more than the cheap goods of the sisters in the other room, but one must pay a price for extravagance, am I right?")
	Dialog.AddVoiceover("voiceover/english/merchant_gauldry/qey_south/100_mer_appraisor_gauldry_hail_c65547fa.mp3", 3552991495, 1168562652)
    if not HasQuest(Spawn,snakes) then
	Dialog.AddOption("With goods like yours you must need rare supplies.", "Dialog2")
    end
    if GetQuestStep(Spawn,snakes)==2 then
	Dialog.AddOption("Here are the flying snake wings you asked for.", "Dialog3")
    end
    Dialog.AddOption("I just might take a look at what you have.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As a matter of fact, I do!  I'm needing more and more as people come running in off the streets.  Say, perhaps you could do me a favor?  I'd pay ya for your time, of course.")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("Sure.  If your looking for some help, I would be happy too.","Job")
	Dialog.AddOption("Another time, perhaps.")
	Dialog.Start()
end

function Job(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    OfferQuest(NPC,  Spawn,snakes)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed you have.  I'm pleased with your work!  Very pleased, indeed.  Take this coin as a token of my appreciation.")
 	Dialog.AddVoiceover("voiceover/english/merchant_gauldry/qey_south/100_mer_appraisor_gauldry_finish_b562a34d.mp3", 3870377435, 2109541208)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("Gladly.","JobDone")
	Dialog.Start()
end

function JobDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,snakes, 2)
    end