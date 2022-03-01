--[[
	Script Name	: SpawnScripts/GreaterFaydark/YarinSkystride.lua
	Script Purpose	: Yarin Skystride <Sylvan Hunters>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I would like the writ: Crushbone Sentries", "dlg_2_1")
	AddConversationOption(conversation, "I would like the writ: Crushbone Conscripts")
	AddConversationOption(conversation, "I am too busy at this time to help, though it is a worthy cause.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Sylvan Hunters, .. GetName(Spawn) .. .  The lands of Faydwer can be a very dangerous place.  We could use your help making it safer for our people and allies.")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Sentries", "dlg_3_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Conscripts")
		AddConversationOption(conversation, "I am too busy at this time to help, though it is a worthy cause.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Sylvan Hunters, .. GetName(Spawn) .. .  The lands of Faydwer can be a very dangerous place.  We could use your help making it safer for our people and allies.")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Crushbone Sentries", "dlg_16_1")
		AddConversationOption(conversation, "I would like the writ: Crushbone Conscripts")
		AddConversationOption(conversation, "I would like the writ: Crushbone Sparrers")
		AddConversationOption(conversation, "I am too busy at this time to help, though it is a worthy cause.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Sylvan Hunters, .. GetName(Spawn) .. .  The lands of Faydwer can be a very dangerous place.  We could use your help making it safer for our people and allies.")
	end

end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, I'll get started right away.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "The Sylvan Hunters would like for you to eliminate Crushbone sentries to further our cause.  Doing so will earn you favor with our organization.")
end

