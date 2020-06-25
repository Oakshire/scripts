--[[
	Script Name	: SpawnScripts/QeynosHarbor/MaryDillon.lua
	Script Purpose	: Mary Dillon 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1053.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "What?")
	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1053.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_18_1")
		StartConversation(conversation, NPC, Spawn, "What?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1053.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "What?")
	end
	
	if convo==20 then
		PlayFlavor(NPC, "", "Just leave me alone. Please!", "no", 1689589577, 4560189, Spawn)
	end

end

