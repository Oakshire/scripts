--[[
	Script Name	: SpawnScripts/Starcrest/ElliasenkaCroosinaden.lua
	Script Purpose	: Elliasenka Croosinaden 
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

	PlayFlavor(NPC, "voiceover/english/elliasenka_croosinaden/qey_village02/elliasenkacroosinaden000.mp3", "", "", 4184348378, 3631028960, Spawn)
	AddConversationOption(conversation, "You seem to be busy.  I'll find someone else to talk to.")
	StartConversation(conversation, NPC, Spawn, "Unless you possess the knowledge we seek and will help us, I suggest you leave us with this human. Now, go, leave us to our business!")
end