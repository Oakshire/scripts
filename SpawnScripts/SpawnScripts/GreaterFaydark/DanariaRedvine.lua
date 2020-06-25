--[[
	Script Name	: SpawnScripts/GreaterFaydark/DanariaRedvine.lua
	Script Purpose	: Danaria Redvine 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1067.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nothing, thanks.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Hello.  Do you need something?")
end

