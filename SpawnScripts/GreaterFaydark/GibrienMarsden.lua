--[[
	Script Name	: SpawnScripts/GreaterFaydark/GibrienMarsden.lua
	Script Purpose	: Gibrien Marsden <Assistant City Registrar>
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Glad to see you around.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Good day to live in the trees.", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm interested in becoming a citizen of Kelethin.", "dlg_57_1")
	AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.")
	AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
	AddConversationOption(conversation, "Nothing right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	if convo==58 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in becoming a citizen of Kelethin.", "dlg_58_1")
		AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.")
		AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
		AddConversationOption(conversation, "Nothing right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	end

	if convo==59 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1022.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in becoming a citizen of Kelethin.", "dlg_59_1")
		AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.")
		AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
		AddConversationOption(conversation, "Nothing right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	end

	if convo==60 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in becoming a citizen of Kelethin.", "dlg_60_1")
		AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.")
		AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
		AddConversationOption(conversation, "Nothing right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	end

	if convo==61 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in becoming a citizen of Kelethin.", "dlg_61_1")
		AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.")
		AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
		AddConversationOption(conversation, "Nothing right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	end

	if convo==62 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.", "dlg_62_1")
		AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
		AddConversationOption(conversation, "Nothing right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	end

	if convo==63 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'd like to work on my citizenship with Kelethin.", "dlg_63_1")
		AddConversationOption(conversation, "Have I proven my worth to Kelethin yet?")
		AddConversationOption(conversation, "Nothing right now, thanks.")
		StartConversation(conversation, NPC, Spawn, "What would you like more information about?")
	end

end

function dlg_57_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I do that?")
	StartConversation(conversation, NPC, Spawn, "Hmm...let me see.  Yes, it looks as though you've been doing quite a number of hours of community service for Kelethin.  Congratulations, .. GetName(Spawn) .. . You now have the right to apply with Queen Amree for citizenship!")
end

function dlg_58_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nevermind, I changed my mind.", "dlg_58_2")
	StartConversation(conversation, NPC, Spawn, "Are you now? There are a couple of administrative tasks we need to take care of before you can get started.  First off, where are you currently considered a citizen?  Or are you currently in exile?")
end

function dlg_59_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right.")
	AddConversationOption(conversation, "I need to take care of something else first.", "dlg_59_2")
	StartConversation(conversation, NPC, Spawn, "The first thing Queen Amree requests is that you familiarize yourself with the community before you make any commitments that you cannot reverse.  Please speak with Nimess Sessi, a courtier in the Royal Court.  He only speaks Faerlie, so before you speak with him, if you haven't done so already Miella Maarsitotts will teach you.")
end

function dlg_60_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I do that?")
	StartConversation(conversation, NPC, Spawn, "Hmm...let me see.  Yes, it looks as though you've been doing quite a number of hours of community service for Kelethin.  Congratulations, .. GetName(Spawn) .. . You now have the right to apply with Queen Amree for citizenship!")
end

function dlg_60_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That sounds great!", "dlg_60_3")
	StartConversation(conversation, NPC, Spawn, "It's very simple, really.  The Queen will ask you some questions to ascertain your sincerity about making this commitment and then she'll conduct the ceremony herself!")
end

function dlg_61_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right.")
	AddConversationOption(conversation, "I need to take care of something else first.", "dlg_61_2")
	StartConversation(conversation, NPC, Spawn, "The first thing Queen Amree requests is that you familiarize yourself with the community before you make any commitments that you cannot reverse.  Please speak with Nimess Sessi, a courtier in the Royal Court.  He only speaks Faerlie, so before you speak with him, if you haven't done so already Miella Maarsitotts will teach you.")
end

function dlg_61_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_61_3")
	StartConversation(conversation, NPC, Spawn, "Come back once you've done as he recommends and we can get you started on your community tasks.")
end

function dlg_62_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_62_2")
	AddConversationOption(conversation, "I need to take care of something else first.")
	StartConversation(conversation, NPC, Spawn, "The first thing Queen Amree requests is that you familiarize yourself with the community before you make any commitments that you cannot reverse.  Please speak with Nimess Sessi, a courtier in the Royal Court.  He only speaks Faerlie, so before you speak with him, if you haven't done so already Miella Maarsitotts will teach you.")
end

function dlg_62_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_62_3")
	StartConversation(conversation, NPC, Spawn, "Come back once you've done as he recommends and we can get you started on your community tasks.")
end

function dlg_63_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I do that?")
	StartConversation(conversation, NPC, Spawn, "Hmm...let me see.  Yes, it looks as though you've been doing quite a number of hours of community service for Kelethin.  Congratulations, .. GetName(Spawn) .. . You now have the right to apply with Queen Amree for citizenship!")
end

function dlg_63_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That sounds great!", "dlg_63_3")
	StartConversation(conversation, NPC, Spawn, "It's very simple, really.  The Queen will ask you some questions to ascertain your sincerity about making this commitment and then she'll conduct the ceremony herself!")
end

function dlg_63_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks!", "dlg_63_4")
	StartConversation(conversation, NPC, Spawn, "Best of luck to you, .. GetName(Spawn) .. .  Welcome to Kelethin!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Glad to see you around.", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Good day to live in the trees.", "", 1689589577, 4560189, Spawn)
--]]

