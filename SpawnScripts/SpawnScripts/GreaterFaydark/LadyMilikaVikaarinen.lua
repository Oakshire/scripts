--[[
	Script Name	: SpawnScripts/GreaterFaydark/LadyMilikaVikaarinen.lua
	Script Purpose	: Lady Milika Vikaarinen <Fae Royal Defense Minister>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have news of the Grender!", "dlg_6_1")
	AddConversationOption(conversation, "Nothing in particular.  Just looking around.")
	StartConversation(conversation, NPC, Spawn, "Greetings! What brings you into the Fae Royal Hall this day?")
	if convo==70 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing in particular.  Just looking around.", "dlg_70_1")
		StartConversation(conversation, NPC, Spawn, "Greetings! What brings you into the Fae Royal Hall this day?")
	end

end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Er...I don't think that's the same one.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "The mythical beast that supposedly steals a Fae's wings at night?")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "The one that's brought disease to Greater Faydark's creatures. Its lair is directly beneath Kelethin!", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "What Grender is it, then?")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I know where it is.  I'll go!", "dlg_6_4")
	StartConversation(conversation, NPC, Spawn, "This is terrible news!  We must defend Kelethin at all costs!")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_6_5")
	StartConversation(conversation, NPC, Spawn, "You?  Hm...I would prefer to send someone with more experience, but perhaps stealth is the wiser course.  You know where it is and can hurry there before it escapes.  Speak with Queen Amree and ask permission to undertake this task.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Queen Amree is the current ruler of the Fae.", "", 1689589577, 4560189, Spawn)
--]]

