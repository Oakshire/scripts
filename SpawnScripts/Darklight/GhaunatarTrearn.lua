--[[
	Script Name	: SpawnScripts/Darklight/GhaunatarTrearn.lua
	Script Purpose	: Ghaunatar Trearn 
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I am XXXXXXXXX.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "For the balance. I am Ghaunatar Trearn, in Thelia's service.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What work?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "It is good that you arrive here, .. GetName(Spawn) .. . There is work to be done and many of our druids are far away.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I am willing.", "dlg_0_3")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Work for the Darklight Wood, we are her keepers. For instance, the kodiak population has grown very large over the past few months. Though I am working diligently to discover the reason for this, their numbers are affecting the wood even now, and they must be culled. And so we need the services of those such as yourself. Are you willing?")
end

