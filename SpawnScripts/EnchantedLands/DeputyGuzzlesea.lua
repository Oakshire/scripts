--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyGuzzlesea.lua
	Script Purpose	: Deputy Guzzlesea 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "Hello traveler, I am Deputy Guzzlesea.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Oh I'm so tired...", "yawn", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Deputy Guzzlesea reporting for duty!", "salute", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "How are you today?", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Its a nice day today.", "stare", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's just me, Deputy. Have you seen anything in the water?", "dlg_9_1")
		AddConversationOption(conversation, "Oh nothing, sorry to bother you.")
	StartConversation(conversation, NPC, Spawn, "Hello, who goes there?")
	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's just me, Deputy. Have you seen anything in the water?", "dlg_13_1")
		AddConversationOption(conversation, "Oh nothing, sorry to bother you.")
		StartConversation(conversation, NPC, Spawn, "Hello, who goes there?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's just me, Deputy. Have you seen anything in the water?", "dlg_14_1")
		AddConversationOption(conversation, "Oh nothing, sorry to bother you.")
		StartConversation(conversation, NPC, Spawn, "Hello, who goes there?")
	end

end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay, thank you, Deputy Guzzlesea.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "In the water?  No, not that I've noticed.  It's not as clear as it used to be, but I haven't seen anything strange.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Hello traveler, I am Deputy Guzzlesea.", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Oh I'm so tired...", "yawn", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Deputy Guzzlesea reporting for duty!", "salute", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "How are you today?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Its a nice day today.", "stare", 1689589577, 4560189, Spawn)
--]]

