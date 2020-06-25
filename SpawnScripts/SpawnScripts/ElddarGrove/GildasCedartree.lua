--[[
	Script Name	: SpawnScripts/ElddarGrove/GildasCedartree.lua
	Script Purpose	: Gildas Cedartree 
	Script Author	: John Adams
	Script Date	: 2008.09.28
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "", 0, 0, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree017.mp3", "", "", 3941972709, 1584350411, Spawn)
	StartConversation(conversation, NPC, Spawn, "Sorry, friend. I can't offer you help at this time. Good day!")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree017.mp3", "", "", 3941972709, 1584350411, Spawn)
	StartConversation(conversation, NPC, Spawn, "Sorry, friend. I can't offer you help at this time. Good day!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", "", "", 0, 0, Spawn)
--]]

