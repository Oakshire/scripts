--[[
	Script Name	: SpawnScripts/GreaterFaydark/RanduKvan.lua
	Script Purpose	: Randu K'van <Freeport Emmisary>
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

		PlayFlavor(NPC, "randu_k_van/_exp03/exp03_rgn_greater_faydark/randu_kvan/randu_001.mp3", "", "", 961418872, 1648740410, Spawn)
	AddConversationOption(conversation, "And the sun should set on my shoulders.", "dlg_20_1")
	AddConversationOption(conversation, "Excuse me.")
	StartConversation(conversation, NPC, Spawn, "Even the bugs here are giant. Why must I endure this suffering, when I should be leading these blue orcs around pillaging the land?")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "randu_k_van/_exp03/exp03_rgn_greater_faydark/randu_kvan/randu_002.mp3", "", "", 2731381489, 2263143427, Spawn)
	AddConversationOption(conversation, "Your story is amusing, maybe you should do something about it.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "You know at one time the orcs followed the rule of a Teir'Dal. But it seems in our years of absence they have forgotten who their true masters are.")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "randu_k_van/_exp03/exp03_rgn_greater_faydark/randu_kvan/randu_003.mp3", "", "", 2679582233, 3793547301, Spawn)
	AddConversationOption(conversation, "Sure, I will see what I can find.", "dlg_20_3")
	AddConversationOption(conversation, "I don't feel like helping you today.")
	StartConversation(conversation, NPC, Spawn, "We must remedy this. Find out for me what they are up to. Having information is the key to success, so bring it to me. Any information you may find on them. Are you up to the task?")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "randu_k_van/_exp03/exp03_rgn_greater_faydark/randu_kvan/randu_004.mp3", "", "", 4004780597, 2871106835, Spawn)
	AddConversationOption(conversation, "Why thank you.", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "Tell me of their plans. If you happen to have to interrogate any Crushbone centurions, you have my blessing for using deadly force.")
end

