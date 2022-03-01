--[[
	Script Name	: SpawnScripts/Oakmyst/ObserverGaladn.lua
	Script Purpose	: Observer Galadn 
	Script Author	: scatman
	Script Date	: 2009.05.10
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

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1016.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1016.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1016.mp3", "", "hello", 0, 0, Spawn)
	end
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "And you, adventurer.")
end