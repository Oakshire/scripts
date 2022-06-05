--[[
	Script Name	: SpawnScripts/Baubbleshire/DondlFuzzlecutter.lua
	Script Purpose	: Dondl Fuzzlecutter <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: 
--]]

local Delivery = 5445

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
     if GetQuestStep (Spawn, Delivery) == 1 then 
	AddConversationOption(conversation, "Sorry to interrupt, but Jodi from Graystone sen-", "PotionPickup")
	end
	PlayFlavor(NPC, "voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter000.mp3", "", "confused", 605011151, 3443405792, Spawn)
	AddConversationOption(conversation, "I am not a tinkerer. I don't know. ", "dlg_36_1")
	StartConversation(conversation, NPC, Spawn, "...The tract-o-fizzle attaches to the wizgiggler.  Or is it the other way around?  What do you think my friend?")
end

function PotionPickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter001.mp3", "", "thanks", 142866066, 1005520721, Spawn)
	AddConversationOption(conversation, "Actually, I am here to pick them up for her.", "PotionPickup2")
	AddConversationOption(conversation, "I'm not sure. I must be going.")
	StartConversation(conversation, NPC, Spawn, "Ah! It's not the tract-o-fizzle, but the re-giggulator! What a fool I am. Oh, did you say Jodi of Graystone? Do you know her? If so, could you reminder her I have her potions?")
end

function PotionPickup2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/dondl_fuzzlecutter/qey_village06/dondlfuzzlecutter002.mp3", "", "chuckle", 2452336060, 2578339558, Spawn)
	AddConversationOption(conversation, "Alright already! I'll take them now!", "UpdateDelivery")
	StartConversation(conversation, NPC, Spawn, "Excellent! I was afraid she would not make it back in time. I do have to close shop, you know. I cannot stay open all hours of the day! Even though there are twenty-four hours in a Norrathian day, ten days in a Norrathian week, and fourteen weeks in a Norrathian month, and ...")
end

    function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
    end