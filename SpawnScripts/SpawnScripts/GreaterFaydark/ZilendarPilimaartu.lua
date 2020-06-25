--[[
	Script Name	: SpawnScripts/GreaterFaydark/ZilendarPilimaartu.lua
	Script Purpose	: Zilendar Pilimaartu 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "No, thanks.", "dlg_4_1")
	StartConversation(conversation, NPC, Spawn, "Can I help you?")
end

