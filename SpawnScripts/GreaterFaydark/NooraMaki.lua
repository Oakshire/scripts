--[[
	Script Name	: SpawnScripts/GreaterFaydark/NooraMaki.lua
	Script Purpose	: Noora Maki <Master Transmuter>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I understand.", "dlg_66_1")
	StartConversation(conversation, NPC, Spawn, "You've yet to become a crafter.  Please return once you've learned some crafting and I'll teach you more.")
end

