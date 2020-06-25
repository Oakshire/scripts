--[[
	Script Name	: SpawnScripts/TimorousDeep/Meklin.lua
	Script Purpose	: Meklin <Collector>
	Script Author	: John Adams
	Script Date	: 2009.03.04
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
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "wave", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "wave", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "wave", 0, 0, Spawn)
	end

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I don't have any at the moment.", "dlg_14_1")
	StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I love collecting things!")
end

