--[[
	Script Name	: SpawnScripts/GreaterFaydark/MatstyrAlesmith.lua
	Script Purpose	: Matstyr Alesmith <Mender>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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
	conversation = CreateConversation()

		PlayFlavor(NPC, "matstyr_alesmith/_exp03/exp03_rgn_greater_faydark/matstyr_alesmith/matstyr_001.mp3", "", "", 1937953293, 2767488861, Spawn)
	AddConversationOption(conversation, "I was wondering if I could do anything for you.", "dlg_23_1")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Hail and good to meet ya. I am Matstyr, Your traveling Smith and all around do anything you need Dwarf. Is there anything I can do for you?")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "matstyr_alesmith/_exp03/exp03_rgn_greater_faydark/matstyr_alesmith/matstyr_002.mp3", "", "", 2958360418, 2661137078, Spawn)
	AddConversationOption(conversation, "Sounds good, where can I start.", "dlg_23_2")
	AddConversationOption(conversation, "I change my mind, I don’t have time.")
	StartConversation(conversation, NPC, Spawn, "Well I am a bit back logged on my list of things to help people with. I guess I could hire you to help me out for a bit. No long term contract mind you. ")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "matstyr_alesmith/_exp03/exp03_rgn_greater_faydark/matstyr_alesmith/matstyr_003.mp3", "", "", 1881646035, 610210479, Spawn)
	AddConversationOption(conversation, "I will return with the pelts.", "dlg_23_3")
	AddConversationOption(conversation, "I don’t want to kill any wolves.")
	StartConversation(conversation, NPC, Spawn, "Well I have an order to fill from one of those tree hugging elves. They need some wolf pelts to make leather armor for their young warriors. I told them it would be no problem, but it seems I underestimated how much they would need. If you could bring me a bundle of pelts it would help quite a bit.")
end

