--[[
	Script Name	: SpawnScripts/GreaterFaydark/Jilaen.lua
	Script Purpose	: Jilaen 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I am XXXXXXXX.", "dlg_38_1")
	StartConversation(conversation, NPC, Spawn, "Hello there! I'm Jilaen, who are you?")
end

function dlg_38_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Not yet.", "dlg_38_2")
	StartConversation(conversation, NPC, Spawn, "It's a pleasure to meet you! I love meeting new people, and exploring new places, and learning new things! Everyone I've met has taught me so much, even if they didn't want to! Have you met Lady Katri?")
end

function dlg_38_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll go find her.", "dlg_38_3")
	StartConversation(conversation, NPC, Spawn, "Really? You should go speak with her! If you take the path west, staying left when you have a choice, you'll get to Kelethin. There you can ride the lift up right to the platform that Lady Katri is on! She can teach you about the Fae!")
end

function dlg_38_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Goodbye.", "dlg_38_4")
	StartConversation(conversation, NPC, Spawn, "Hooray! Goodbye for now!")
end

