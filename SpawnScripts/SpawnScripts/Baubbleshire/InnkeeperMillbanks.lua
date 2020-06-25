--[[
	Script Name	: SpawnScripts/Baubbleshire/InnkeeperMillbanks.lua
	Script Purpose	: Innkeeper Millbanks <Housing>
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

	PlayFlavor(NPC, "innkeeper_millbanks/qey_village06/innkeeper010.mp3", "", "", 3433721579, 62806591, Spawn)
	AddConversationOption(conversation, "Yes, please.", "dlg_29_1")
	AddConversationOption(conversation, "Not right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village.  We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end