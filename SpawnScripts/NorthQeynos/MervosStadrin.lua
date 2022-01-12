--[[
	Script Name	: SpawnScripts/NorthQeynos/MervosStadrin.lua
	Script Purpose	: Mervos Stadrin <Collector>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

	local choice = math.random(1,0)

	if choice == 1 then
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you.  What I wouldn't give to journey the world as I did in my youth.   Alas, I am an old man, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you.  What I wouldn't give to journey the world as I did in my youth.   Alas, I am an old man, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you.  What I wouldn't give to journey the world as I did in my youth.   Alas, I am an old man, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you.  What I wouldn't give to journey the world as I did in my youth.   Alas, I am an old man, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay, bye!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find! Here, take this for all your hard work.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you.  What I wouldn't give to journey the world as I did in my youth.   Alas, I am an old man, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Why, any sort of collection. There's so much out there to  find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth! ")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind.", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Why, any sort of collection. There's so much out there to  find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth! ")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind.", "dlg_31_2")
	StartConversation(conversation, NPC, Spawn, "Why, any sort of collection. There's so much out there to  find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth! ")
end

