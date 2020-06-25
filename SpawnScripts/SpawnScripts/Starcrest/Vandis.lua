--[[
	Script Name	: SpawnScripts/Starcrest/Vandis.lua
	Script Purpose	: Vandis 
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

	PlayFlavor(NPC, "voiceover/english/vandis/qey_village02/vandis.mp3", "", "", 555689921, 1189263301, Spawn)
	AddConversationOption(conversation, "I'm not going to say anything.  I can see you are losing well enough on your own.")
	StartConversation(conversation, NPC, Spawn, "Can't you see I'm in the middle of a game of King's Field?  And no, you can't help!")
end