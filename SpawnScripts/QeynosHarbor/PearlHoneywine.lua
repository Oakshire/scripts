--[[
	Script Name	: SpawnScripts/QeynosHarbor/PearlHoneywine.lua
	Script Purpose	: Pearl Honeywine 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1019.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What's so interesting?", "dlg_25_1")
		AddConversationOption(conversation, "I don't suppose you're speaking to me.  Good day!")
	StartConversation(conversation, NPC, Spawn, "I wonder whether they've simply been here all along and we didn't see them?  Or is there some new way these creatures are reaching civilization?  The possibilities are endless and interesting!")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm not interested in roadkill.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "My apologies! I was lost in thought for a moment.  The return of the roekilliks has taken me and my colleagues quite by surprise.  They are such an ancient race; this is very exciting information!")
end

