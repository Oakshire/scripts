--[[
	Script Name	: SpawnScripts/Starcrest/LuvileBinlee.lua
	Script Purpose	: Luvile Binlee 
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

	PlayFlavor(NPC, "voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee000.mp3", "", "", 2956622106, 3546014069, Spawn)
	AddConversationOption(conversation, "That's a bit deep for me.  Sorry for bothering your meditations.")
	StartConversation(conversation, NPC, Spawn, "I'm contemplating how this tree symbolizes a person's life ... We all come from a solid trunk grounded in history, and the tree branches represent the random choices we make in life...")
end