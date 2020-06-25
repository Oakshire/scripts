--[[
	Script Name	: SpawnScripts/QeynosHarbor/apiratefirstmate.lua
	Script Purpose	: a pirate first mate <Pirates of Gunthak>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Can I help?", "dlg_29_1")
		AddConversationOption(conversation, "I don't like the cut of your jib. ")
	StartConversation(conversation, NPC, Spawn, "Avast, what in the name of the bosun's black beard are you doing?  How are we going to skewer them out there if you're wasting time here?  The standoff in the Smuggler's Den isn't going to resolve itself.")
	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Can I help?", "dlg_30_1")
		AddConversationOption(conversation, "I don't like the cut of your jib. ")
		StartConversation(conversation, NPC, Spawn, "Avast, what in the name of the bosun's black beard are you doing?  How are we going to skewer them out there if you're wasting time here?  The standoff in the Smuggler's Den isn't going to resolve itself.")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Can I help?", "dlg_31_1")
		AddConversationOption(conversation, "I don't like the cut of your jib. ")
		StartConversation(conversation, NPC, Spawn, "Avast, what in the name of the bosun's black beard are you doing?  How are we going to skewer them out there if you're wasting time here?  The standoff in the Smuggler's Den isn't going to resolve itself.")
	end

end

