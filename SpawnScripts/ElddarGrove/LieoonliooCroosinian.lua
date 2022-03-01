--[[
	Script Name	: SpawnScripts/ElddarGrove/LieoonliooCroosinian.lua
	Script Purpose	: Lieoonlioo Croosinian <Troubador Trainer>
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
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
	else
	end

		PlayFlavor(NPC, "lieoonlioo_croosinian/qey_elddar/trainer_troubador001.mp3", "", "", 484417616, 3729027420, Spawn)
	AddConversationOption(conversation, "Just looking around.", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "Well met, .. GetName(Spawn) .. .  What brings you to the Elddar Grove this fine day?")
	if convo==12 then
		PlayFlavor(NPC, "lieoonlioo_croosinian/qey_elddar/trainer_troubador001.mp3", "", "", 484417616, 3729027420, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Well met, .. GetName(Spawn) .. .  What brings you to the Elddar Grove this fine day?")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
--]]

