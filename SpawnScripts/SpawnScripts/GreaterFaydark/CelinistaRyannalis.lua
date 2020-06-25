--[[
	Script Name	: SpawnScripts/GreaterFaydark/CelinistaRyannalis.lua
	Script Purpose	: Celinista Ryannalis <Order of Arcane>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I would like the writ: Scorched Skeletal Wizards", "dlg_12_1")
	AddConversationOption(conversation, "I would like the writ: Fayflies")
	AddConversationOption(conversation, "I will return later to lend my aid.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Order of Arcane, .. GetName(Spawn) .. .  We could use your assistance if you are willing to lend a hand.")
	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Scorched Skeletal Wizards", "dlg_13_1")
		AddConversationOption(conversation, "I would like the writ: Fayflies")
		AddConversationOption(conversation, "I will return later to lend my aid.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Order of Arcane, .. GetName(Spawn) .. .  We could use your assistance if you are willing to lend a hand.")
	end

end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, I'll get started right away.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "The Order of the Arcane would like for you to eliminate scorched skeletal wizards to further our cause.  Doing so will earn you favor with our organization.")
end

