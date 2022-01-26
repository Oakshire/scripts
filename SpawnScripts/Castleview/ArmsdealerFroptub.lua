--[[
	Script Name	: SpawnScripts/Castleview/ArmsdealerFroptub.lua
	Script Purpose	: Armsdealer Froptub <Weaponsmith>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

local SwordPickup = 5455

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/100_armsdealer_froptub_multhail1_14614e12.mp3", "Graciously accept my pardon for I am a quite the bit busy.  Mayhaps I couldst speak with thee anon?", "", 1509622466, 1792291092, Spawn)
    
end
]]--

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if  GetQuestStep(Spawn, SwordPickup) == 1 then
    AddConversationOption(conversation, "I am here to see after Aadalian's sword", "OrderUp")
    end
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	AddConversationOption(conversation, "I don't need anything today, thank you.")
	StartConversation(conversation, NPC, Spawn, "Welcome to my shop adventurer! My orders seem to be backing up, but I can help you out if you are looking to make a quick purchase!")
end

function OrderUp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
    AddConversationOption(conversation, "Is it available to give to him?", "Delivery")
	StartConversation(conversation, NPC, Spawn, "FROOAK! Yes! I etched the mark he wished into the blade! I'm not much for ornimental marks, I prefer to leave the weapons I make in their pure form. One that calls to mind is that the weapon is an extension of the wielder's ability.")
end

function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
    AddConversationOption(conversation, "I'll take it to him right away", "Delivery2")
	StartConversation(conversation, NPC, Spawn, "I don't see why not. Here it is! I hope he is pleased with the work. Though, I understand the elven smiths are surpassed by none in this craft. He did come to me! I could only assume he wanted my craftsmanship.")
end

function Delivery2(NPC, Spawn)
    SetStepComplete(Spawn, SwordPickup, 1)
end
