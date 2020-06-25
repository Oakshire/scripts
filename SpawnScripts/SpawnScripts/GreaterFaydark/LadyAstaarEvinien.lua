--[[
	Script Name	: SpawnScripts/GreaterFaydark/LadyAstaarEvinien.lua
	Script Purpose	: Lady Astaar Evinien <Hospitality>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What's that?", "dlg_37_1")
	AddConversationOption(conversation, "No, thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  Are you here to participate in the Fae Ritual of Calling?")
	if convo==101 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_101_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you placed the offering at the memorial?")
	end

	if convo==102 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_102_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you placed the offering at the memorial?")
	end

	if convo==103 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_103_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you placed the offering at the memorial?")
	end

end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd love to do that.", "dlg_37_2")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "It's a ritual that allows the Fae, as well as those who honor our ways, to return to Kelethin whenever they wish.")
end

function dlg_37_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What must I do?", "dlg_37_3")
	StartConversation(conversation, NPC, Spawn, "Excellent! I have already heard of your prowess from the Matron, .. GetName(Spawn) .. . so this will be easy for you.  The Fae use these simple rituals to help us retain our sense of community, especially with so many changes coming our way lately.")
end

function dlg_37_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I see.", "dlg_37_4")
	AddConversationOption(conversation, "I'm not ready for this task just yet.")
	StartConversation(conversation, NPC, Spawn, "You've heard of the Fae spirit buds and may have assumed that we are some type of plant! It's merely a figure of speech.  Our spirit buds surround the city, observing and guiding us.  When a spirit bud is ready for renewal, it chooses when and where to return.  The ritual you'll perform welcomes a spirit back to us, helping it focus on our beloved city.")
end

function dlg_37_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will do this.", "dlg_37_5")
	StartConversation(conversation, NPC, Spawn, "Take this simple offering with you to the memorial inside Kelethin to those who fell during the Siege.  The best way to welcome a new spirit is by honoring those spirits no longer with us.")
end

function dlg_101_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It was a memorial to those who fell during the Siege of Kelethin.", "dlg_101_2")
	AddConversationOption(conversation, "I don't understand the meaning of the memorial.")
	StartConversation(conversation, NPC, Spawn, "Do you understand? Or do you have questions?")
end

function dlg_101_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I see.", "dlg_101_3")
	StartConversation(conversation, NPC, Spawn, "The memorial was placed on the remains of a tree burnt during the Siege.  Many, not just Fae, lost their lives in that time.  Many of our spirits were lost in that time...so we honor the returning Fae spirits that much more.  We are glad that they can return, you see?")
end

function dlg_102_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It was a memorial to those who fell during the Siege of Kelethin.", "dlg_102_2")
	AddConversationOption(conversation, "I don't understand the meaning of the memorial.")
	StartConversation(conversation, NPC, Spawn, "Do you understand? Or do you have questions?")
end

function dlg_102_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "The memorial was placed on the remains of a tree burnt during the Siege.  Many, not just Fae, lost their lives in that time.  Many of our spirits were lost in that time...so we honor the returning Fae spirits that much more.  We are glad that they can return, you see?")
end

function dlg_103_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It was a memorial to those who fell during the Siege of Kelethin.", "dlg_103_2")
	AddConversationOption(conversation, "I don't understand the meaning of the memorial.")
	StartConversation(conversation, NPC, Spawn, "Do you understand? Or do you have questions?")
end

function dlg_103_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I see.", "dlg_103_3")
	StartConversation(conversation, NPC, Spawn, "The memorial was placed on the remains of a tree burnt during the Siege.  Many, not just Fae, lost their lives in that time.  Many of our spirits were lost in that time...so we honor the returning Fae spirits that much more.  We are glad that they can return, you see?")
end

function dlg_103_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_103_4")
	StartConversation(conversation, NPC, Spawn, "May Tunare guide you, .. GetName(Spawn) .. . You've shown the Fae respect by honoring our ritual.  I'm pleased to present you with the Call of Kelethin, so that your spirit may also return to us.")
end

