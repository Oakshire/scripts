--[[
	Script Name	: SpawnScripts/GreaterFaydark/GlurieStonegrip.lua
	Script Purpose	: Glurie Stonegrip <Protectors of Growth>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_4_1")
	AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
	AddConversationOption(conversation, "I would like the writ: Crushbone Centurions")
	AddConversationOption(conversation, "I will return to assist you, later.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_5_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I would like the writ: Crushbone Centurions")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_6_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I would like the writ: Crushbone Centurions")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_7_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I would like the writ: Crushbone Centurions")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_15_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_16_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

	if convo==94 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_94_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

	if convo==95 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Pawns", "dlg_95_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Footmen")
		AddConversationOption(conversation, "I will return to assist you, later.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Protectors of Growth, .. GetName(Spawn) .. .  We are in need of your help if you are willing to assist us.")
	end

end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, I'll get started right away.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "The Protectors of Growth would like for you to eliminate Crushbone pawns to further our cause.  Doing so will earn you favor with our organization.")
end

