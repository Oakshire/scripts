--[[
	Script Name	: SpawnScripts/Oakmyst/AundorSingingsword.lua
	Script Purpose	: Aundor Singingsword 
	Script Author	: Dorbin
	Script Date	: 5.2.2022
	Script Notes	: 
--]]

local BookDelivery = 5514

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword000.mp3", "", "", 715745780, 1617277503, Spawn)
		if GetQuestStep(Spawn,BookDelivery)==2 then
    	AddConversationOption(conversation, "Rune Starshimmer wanted me to deliver this book to you.","Delivery1")
        end
	AddConversationOption(conversation, "I'll keep that in mind, thanks.")
	StartConversation(conversation, NPC, Spawn, "The forest's blessing to you. It is a good day to practice sword play, is it not? ")
end

function Delivery1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword001.mp3", "", "ponder", 209447750, 500268709, Spawn)
    AddConversationOption(conversation, "A copy of Pelle's Adventures.", "Deliver2")
	StartConversation(conversation, NPC, Spawn, "And what book would this be, young one?")
end

function Deliver2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword002.mp3", "", "happy", 2949325286, 1344537433, Spawn)
    AddConversationOption(conversation, "I should really be getting back to Pelle...", "UpdateDeliveryFinal")
	StartConversation(conversation, NPC, Spawn, "Adventures?!  Hehe, misdeeds is more like it!  This should be quite amusing.  Pelle's embellishment of history is nothing short of bombastic.  Those among us who were there know what really happened.  For example, when we came across that small encampment of orcs...")
end

function UpdateDeliveryFinal(NPC, Spawn)
 PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
SetStepComplete(Spawn,BookDelivery,2)
end
