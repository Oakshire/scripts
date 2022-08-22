--[[
	Script Name	: SpawnScripts/Baubbleshire/DondlFuzzlecutter.lua
	Script Purpose	: Dondl Fuzzlecutter <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: Updated Dialog Module - 2022.08.21 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5445

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
else   
    
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...The tract-o-fizzle attaches to the wizgiggler.  Or is it the other way around?  What do you think my friend?")
	Dialog.AddVoiceover("voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter000.mp3", 605011151, 3443405792)
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)

	Dialog.AddOption("Sorry to interrupt, but Jodi from Graystone sent...", "PotionPickup")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, Delivery , 1)

	Dialog.AddOption("I am not a tinkerer. I don't know. ")
	Dialog.Start()
end   
end


function PotionPickup(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah! It's not the tract-o-fizzle, but the re-giggulator! What a fool I am. Oh, did you say Jodi of Graystone? Do you know her? If so, could you reminder her I have her potions?")
	Dialog.AddVoiceover("voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter001.mp3", 142866066, 1005520721)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("Actually, I am here to pick them up for her.", "PotionPickup2")
	Dialog.AddOption("I'm not sure. I must be going.")
	Dialog.AddOption("I am not a tinkerer. I don't know. ")
	Dialog.Start()
end

function PotionPickup2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! I was afraid she would not make it back in time. I do have to close shop, you know. I cannot stay open all hours of the day! Even though there are twenty-four hours in a Norrathian day, ten days in a Norrathian week, and fourteen weeks in a Norrathian month, and ...")
	Dialog.AddVoiceover("voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter002.mp3", 2452336060, 2578339558)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddOption("Alright already! I'll take them now!", "UpdateDelivery")
	Dialog.Start()
end

function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
end