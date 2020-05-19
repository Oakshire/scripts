--[[
	Script Name	: SpawnScripts/GreaterFaydark/VenlaVaara.lua
	Script Purpose	: Venla Vaara <Collector>
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
	AddConversationOption(conversation, "I don't have any at the moment.", "dlg_38_1")
	StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I love collecting things!")
end

