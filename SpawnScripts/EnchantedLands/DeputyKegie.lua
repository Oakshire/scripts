--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyKegie.lua
	Script Purpose	: Deputy Kegie 
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

	local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "Don't come closer or I'll sic my hound on you!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "This isn't worth it.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No.  It was a halfling.  I stopped him in his tracks.", "dlg_1_1")
		AddConversationOption(conversation, "I don't know.  No.  Probably not.")
		StartConversation(conversation, NPC, Spawn, "Who's taking it?  Have you found the culprit?  It's those Mistcallers, isn't it?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Deputy, about your...", "dlg_2_1")
		AddConversationOption(conversation, "This isn't worth it.")
		StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You really need a companion.", "dlg_3_1")
		AddConversationOption(conversation, "This isn't worth it.")
		StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Calm down, Deputy! Nettlebrine sent me.  With badgers.", "dlg_4_1")
		AddConversationOption(conversation, "This isn't worth it.")
		StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Are you sure 'they' are the problem?", "dlg_5_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you gotten rid of them?  Have you?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's me again, Deputy.", "dlg_6_1")
		AddConversationOption(conversation, "This isn't worth it.")
		StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "This isn't worth it.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "This isn't worth it.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "I'm warning you!  Identify yourself or pay the ultimate price!")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Er, no.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "That's great news! Well, not great, but at least good! Was he stealing the halflings, too?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll let you know if I see anything suspicious.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "I was hoping we could solve all the disappearances at once.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where?", "dlg_2_2")
		AddConversationOption(conversation, "Oh, good grief.")
	StartConversation(conversation, NPC, Spawn, "Duck!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not a problem.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Look out! They're coming in from the sky...kill them!  They're coming to carry us all away!  Stop them!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Isn't it your job to find lost animals?", "dlg_3_2")
		AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Oh! Have you found my little lost hound?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did you last see him?", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "First the deputies, then the jum jum and now my hound! I'm next! I'm doomed! Doomed!")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_kegie/enchanted/solo_kegie/quest_kegie018.mp3", "", "", 2432998480, 1014829086, Spawn)
		AddConversationOption(conversation, "I'll take a look.", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "A couple of nights ago.  I saw Mutton -- that's his name, Mutton -- chasing some badgers along the path.  It was definitely after Deputy Mirebrook disappeared.  I heard Mutton howling...but I was to afraid to see what was wrong.  Perhaps he went back to his trainer, Deputy Huckfar?")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am?", "dlg_4_2")
		AddConversationOption(conversation, "Maybe later.  I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Have they found out what happened to Deputy Mirebrook? Wait.  Did you say badgers? You're here to help me!")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What have I gotten into this time?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Thank you! You've no idea...I've been trying to keep my eye peeled, in case Deputy Mirebrook returns.  They came in the middle of the night and I haven't seen him since! You must kill them!")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Whoa! All right! I'll take care of them.", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "They're in the water, poisoning it! I told Mirebrook to stay away from them, but he wouldn't listen! Don't let them take me!")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Never mind.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "You mean...there might be others out there?! Oh, no! Quick! Quick! Bar the doors!  Lock the windows! Help!")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why are you so jumpy?", "dlg_6_2")
		AddConversationOption(conversation, "Look out behind you! Just kidding.")
	StartConversation(conversation, NPC, Spawn, "What is it?  What are you reporting this time?")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "The jum jum?", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "You'd be jumpy, too, if your partner disappeared one day! Poof! Gone! Those Mistcallers may not have got him, but something did!  Just like something got the jum jum.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Get a grip on yourself! I'll see what I can find out.", "dlg_6_4")
	StartConversation(conversation, NPC, Spawn, "Do you know who took it? The barrels, they're empty! All over the world, barrels going empty! First they're stealing the halflings...and now the jum jum!  It's the end of the world! The end!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Don't come closer or I'll sic my hound on you!", "", 1689589577, 4560189, Spawn)
--]]

