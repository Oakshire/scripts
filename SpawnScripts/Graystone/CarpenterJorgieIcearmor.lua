--[[
	Script Name	: SpawnScripts/Graystone/CarpenterJorgieIcearmor.lua
	Script Purpose	: Carpenter Jorgie Icearmor 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor000.mp3", "", "", 2791551387, 1030675041, Spawn)
	AddConversationOption(conversation, "I fully agree.  I'll let you get back to work!")
	StartConversation(conversation, NPC, Spawn, "A good day's work is the measure of worth!")
end