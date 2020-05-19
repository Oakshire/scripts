--[[
	Script Name	: SpawnScripts/GreaterFaydark/CeftStoutarm.lua
	Script Purpose	: Ceft Stoutarm 
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

		PlayFlavor(NPC, "ceft_stoutarm/_exp03/exp03_rgn_greater_faydark/ceft_stoutarm/ceft_001.mp3", "", "", 3428054775, 3943106008, Spawn)
	AddConversationOption(conversation, "Is everything okay?", "dlg_19_1")
	AddConversationOption(conversation, "I don't care.")
	StartConversation(conversation, NPC, Spawn, "Well, hello there. if you're here to buy some ale, you're going to have to wait a while. It seems the magic of getting here affected some of my supplies.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ceft_stoutarm/_exp03/exp03_rgn_greater_faydark/ceft_stoutarm/ceft_002.mp3", "", "", 1222026654, 3497444691, Spawn)
	AddConversationOption(conversation, "Do you want me to get you a stick?", "dlg_19_2")
	AddConversationOption(conversation, "A stick? Get it yourself.")
	StartConversation(conversation, NPC, Spawn, "It hasn’t been the best trip for me that’s for sure. If you want any of my ale you are going to have to help out. My stir stick was broken by Grum, and now I am in need of another one. But it's not like I can use just any stick.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ceft_stoutarm/_exp03/exp03_rgn_greater_faydark/ceft_stoutarm/ceft_003.mp3", "", "", 649655305, 3225332806, Spawn)
	AddConversationOption(conversation, "I will find the most wicked tree in the faydark.", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "The stick needs to come from a tree that is home to bees. If you can find it on an evil tree that’s even better since it will impart some of its spirit to the ale.")
end

