--[[
	Script Name	: SpawnScripts/QeynosHarbor/RosalinaGoodfallow.lua
	Script Purpose	: Rosalina Goodfallow <Steward of Antonia Bayle>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "I often see to our Antonia's business outside of the castle. She trusts me implicitly.", "converse_female01", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, when Antonia calls, I answer.", "dlg_0_1")
		AddConversationOption(conversation, "Hold on for just a few moments...")
	StartConversation(conversation, NPC, Spawn, "Well then! You must be, Haihaog! Antonia Bayle herself wishes to see you. I don't know why precisely, but it seems very important. And who are you to keep the Antonia waiting!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, when Antonia calls, I answer.", "dlg_1_1")
		AddConversationOption(conversation, "Hold on for just a few moments...")
		StartConversation(conversation, NPC, Spawn, "Well then! You must be, Haihaog! Antonia Bayle herself wishes to see you. I don't know why precisely, but it seems very important. And who are you to keep the Antonia waiting!")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "I often see to our Antonia's business outside of the castle. She trusts me implicitly.", "converse_female01", 1689589577, 4560189, Spawn)
--]]

