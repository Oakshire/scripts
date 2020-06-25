--[[
	Script Name	: SpawnScripts/QeynosHarbor/agnomeresearcher_1.lua
	Script Purpose	: a gnome researcher <Meldrath's Machinists>
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
		PlayFlavor(NPC, "", "You're supposed to be demonstrating our superiority in the Gears of Klak'Anon arena, remember?", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sounds like you want to teach them a lesson.", "dlg_21_1")
		AddConversationOption(conversation, "I don't want to get in the middle of this.")
	StartConversation(conversation, NPC, Spawn, "I find it simply appalling that we have to share the Cog of Precision with Tinmizer's Tinkerers.  Those fools don't know what they've got in their possession.  Granted, they turn up intriguing data every once in awhile, but even my old pappy's lunar-powered sundial was right once a day.")
	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sounds like you want to teach them a lesson.", "dlg_22_1")
		AddConversationOption(conversation, "I don't want to get in the middle of this.")
		StartConversation(conversation, NPC, Spawn, "I find it simply appalling that we have to share the Cog of Precision with Tinmizer's Tinkerers.  Those fools don't know what they've got in their possession.  Granted, they turn up intriguing data every once in awhile, but even my old pappy's lunar-powered sundial was right once a day.")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sounds like you want to teach them a lesson.", "dlg_23_1")
		AddConversationOption(conversation, "I don't want to get in the middle of this.")
		StartConversation(conversation, NPC, Spawn, "I find it simply appalling that we have to share the Cog of Precision with Tinmizer's Tinkerers.  Those fools don't know what they've got in their possession.  Granted, they turn up intriguing data every once in awhile, but even my old pappy's lunar-powered sundial was right once a day.")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sounds like you want to teach them a lesson.", "dlg_24_1")
		AddConversationOption(conversation, "I don't want to get in the middle of this.")
		StartConversation(conversation, NPC, Spawn, "I find it simply appalling that we have to share the Cog of Precision with Tinmizer's Tinkerers.  Those fools don't know what they've got in their possession.  Granted, they turn up intriguing data every once in awhile, but even my old pappy's lunar-powered sundial was right once a day.")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sounds like you want to teach them a lesson.", "dlg_25_1")
		AddConversationOption(conversation, "I don't want to get in the middle of this.")
		StartConversation(conversation, NPC, Spawn, "I find it simply appalling that we have to share the Cog of Precision with Tinmizer's Tinkerers.  Those fools don't know what they've got in their possession.  Granted, they turn up intriguing data every once in awhile, but even my old pappy's lunar-powered sundial was right once a day.")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "You're supposed to be demonstrating our superiority in the Gears of Klak'Anon arena, remember?", "", 1689589577, 4560189, Spawn)
--]]

