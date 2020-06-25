--[[
	Script Name	: SpawnScripts/QeynosHarbor/aniksarobserver.lua
	Script Purpose	: an iksar observer <Battlefield of Ganak>
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

	local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "Make your way to the Battlefield of Ganak, and show the enemy no mercy!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me more.", "dlg_8_1")
		AddConversationOption(conversation, "I do not have time for games either.  Good day.")
	StartConversation(conversation, NPC, Spawn, "I have no time for games.  But... perhaps you do, if you catch my meaning.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me more.", "dlg_9_1")
		AddConversationOption(conversation, "I do not have time for games either.  Good day.")
		StartConversation(conversation, NPC, Spawn, "I have no time for games.  But... perhaps you do, if you catch my meaning.")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me more.", "dlg_10_1")
		AddConversationOption(conversation, "I do not have time for games either.  Good day.")
		StartConversation(conversation, NPC, Spawn, "I have no time for games.  But... perhaps you do, if you catch my meaning.")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me more.", "dlg_11_1")
		AddConversationOption(conversation, "I do not have time for games either.  Good day.")
		StartConversation(conversation, NPC, Spawn, "I have no time for games.  But... perhaps you do, if you catch my meaning.")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Make your way to the Battlefield of Ganak, and show the enemy no mercy!", "", 1689589577, 4560189, Spawn)
--]]

