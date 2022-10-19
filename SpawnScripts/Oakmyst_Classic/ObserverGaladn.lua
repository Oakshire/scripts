--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/ObserverGaladn.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 05:10:15
    Script Purpose : 
                   : 
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