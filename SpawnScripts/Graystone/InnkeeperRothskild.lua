--[[
	Script Name	: SpawnScripts/Graystone/InnkeeperRothskild.lua
	Script Purpose	: Innkeeper Rothskild <Housing>
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

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village03/innkeeper001.mp3", "", "", 1149132848, 2425114450, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there " .. GetName(Spawn) .. ", what can I help you with?")
end
