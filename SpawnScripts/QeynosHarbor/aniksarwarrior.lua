--[[
	Script Name	: SpawnScripts/QeynosHarbor/aniksarwarrior.lua
	Script Purpose	: an iksar warrior <Battlefield of Ganak>
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
		PlayFlavor(NPC, "", "The sooner you annihilate the opposition on the Battlefield of Ganak, the sooner you will be rewarded.", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To crush your enemies and see them driven before you.", "dlg_4_1")
		AddConversationOption(conversation, "The open steppe, fleet horse, and the wind in your hair.")
	StartConversation(conversation, NPC, Spawn, "Aha, we won again!  This is good, but what is best in life?")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To crush your enemies and see them driven before you.", "dlg_5_1")
		AddConversationOption(conversation, "The open steppe, fleet horse, and the wind in your hair.")
		StartConversation(conversation, NPC, Spawn, "Aha, we won again!  This is good, but what is best in life?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To crush your enemies and see them driven before you.", "dlg_6_1")
		AddConversationOption(conversation, "The open steppe, fleet horse, and the wind in your hair.")
		StartConversation(conversation, NPC, Spawn, "Aha, we won again!  This is good, but what is best in life?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To crush your enemies and see them driven before you.", "dlg_7_1")
		AddConversationOption(conversation, "The open steppe, fleet horse, and the wind in your hair.")
		StartConversation(conversation, NPC, Spawn, "Aha, we won again!  This is good, but what is best in life?")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "The sooner you annihilate the opposition on the Battlefield of Ganak, the sooner you will be rewarded.", "", 1689589577, 4560189, Spawn)
--]]

