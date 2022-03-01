--[[
	Script Name	: SpawnScripts/ScaleYard/InnkeepFrosthome.lua
	Script Purpose	: Innkeep Frosthome <Housing>
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

		PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood06/innkeeper001.mp3", "", "", 3770985114, 3680674401, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_14_1")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there Whipew, what can I help you with?")
end