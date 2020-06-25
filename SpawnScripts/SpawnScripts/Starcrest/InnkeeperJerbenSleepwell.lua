--[[
	Script Name	: SpawnScripts/Starcrest/InnkeeperJerbenSleepwell.lua
	Script Purpose	: Innkeeper Jerben Sleepwell <Housing>
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

	PlayFlavor(NPC, "innkeeper_jerben_sleepwell/qey_village02/innkeeper010.mp3", "", "", 3595889549, 3697050857, Spawn)
	AddConversationOption(conversation, "Yes, please.")
	AddConversationOption(conversation, "No thank you.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village.  We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/100_innkeeper_callout_ce8f52eb.mp3", "It's been so long since I've had one of my wife's special desserts! I want some crunchies! Will you help me get more crunchies?", "", 943990017, 651455380, Spawn)
--]]

