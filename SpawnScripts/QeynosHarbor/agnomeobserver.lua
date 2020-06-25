--[[
	Script Name	: SpawnScripts/QeynosHarbor/agnomeobserver.lua
	Script Purpose	: a gnome observer <Smuggler's Den>
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
		PlayFlavor(NPC, "", "Like I said before, get out there and hold onto those blood-soaked islets.", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_32_1")
		AddConversationOption(conversation, "You shouldn't use words you can't pronounce.")
	StartConversation(conversation, NPC, Spawn, "The Far Seas Trading Company won't rest until they've seizified full control of that collection of spiny rock, and neither will the Smugglers.  There's far too much at stake for either side to up'n give up.  And this, mate, is where we come in.")
	if convo==33 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_33_1")
		AddConversationOption(conversation, "You shouldn't use words you can't pronounce.")
		StartConversation(conversation, NPC, Spawn, "The Far Seas Trading Company won't rest until they've seizified full control of that collection of spiny rock, and neither will the Smugglers.  There's far too much at stake for either side to up'n give up.  And this, mate, is where we come in.")
	end

	if convo==34 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_34_1")
		AddConversationOption(conversation, "You shouldn't use words you can't pronounce.")
		StartConversation(conversation, NPC, Spawn, "The Far Seas Trading Company won't rest until they've seizified full control of that collection of spiny rock, and neither will the Smugglers.  There's far too much at stake for either side to up'n give up.  And this, mate, is where we come in.")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_35_1")
		AddConversationOption(conversation, "You shouldn't use words you can't pronounce.")
		StartConversation(conversation, NPC, Spawn, "The Far Seas Trading Company won't rest until they've seizified full control of that collection of spiny rock, and neither will the Smugglers.  There's far too much at stake for either side to up'n give up.  And this, mate, is where we come in.")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Like I said before, get out there and hold onto those blood-soaked islets.", "", 1689589577, 4560189, Spawn)
--]]

