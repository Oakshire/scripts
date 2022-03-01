--[[
	Script Name	: SpawnScripts/GreaterFaydark/RelcTulin.lua
	Script Purpose	: Relc Tulin <House of Falling Stars>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I would like the writ: Saplings", "dlg_1_1")
	AddConversationOption(conversation, "I would like the writ: Frenzied Virosinoids")
	AddConversationOption(conversation, "I will return to aid you, later.")
	StartConversation(conversation, NPC, Spawn, "Rest easy here in the House of Falling Stars, .. GetName(Spawn) .. .  However, if you are willing, we could really use your help.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Saplings", "dlg_9_1")
		AddConversationOption(conversation, "I would like the writ: Frenzied Virosinoids")
		AddConversationOption(conversation, "I would like the writ: Crushbone Trainers")
		AddConversationOption(conversation, "I will return to aid you, later.")
		StartConversation(conversation, NPC, Spawn, "Rest easy here in the House of Falling Stars, .. GetName(Spawn) .. .  However, if you are willing, we could really use your help.")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Saplings", "dlg_10_1")
		AddConversationOption(conversation, "I would like the writ: Frenzied Virosinoids")
		AddConversationOption(conversation, "I would like the writ: Crushbone Trainers")
		AddConversationOption(conversation, "I will return to aid you, later.")
		StartConversation(conversation, NPC, Spawn, "Rest easy here in the House of Falling Stars, .. GetName(Spawn) .. .  However, if you are willing, we could really use your help.")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Saplings", "dlg_11_1")
		AddConversationOption(conversation, "I would like the writ: Frenzied Virosinoids")
		AddConversationOption(conversation, "I would like the writ: Crushbone Trainers")
		AddConversationOption(conversation, "I will return to aid you, later.")
		StartConversation(conversation, NPC, Spawn, "Rest easy here in the House of Falling Stars, .. GetName(Spawn) .. .  However, if you are willing, we could really use your help.")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Saplings", "dlg_12_1")
		AddConversationOption(conversation, "I would like the writ: Frenzied Virosinoids")
		AddConversationOption(conversation, "I would like the writ: Crushbone Trainers")
		AddConversationOption(conversation, "I will return to aid you, later.")
		StartConversation(conversation, NPC, Spawn, "Rest easy here in the House of Falling Stars, .. GetName(Spawn) .. .  However, if you are willing, we could really use your help.")
	end

end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, I'll get started right away.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "The House of Falling Stars would like for you to eliminate angry saplings to further our cause.  Doing so will earn you favor with our organization.")
end

