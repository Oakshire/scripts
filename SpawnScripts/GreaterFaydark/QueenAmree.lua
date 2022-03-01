--[[
	Script Name	: SpawnScripts/GreaterFaydark/QueenAmree.lua
	Script Purpose	: Queen Amree 
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
	AddConversationOption(conversation, "Yes, I have!", "dlg_0_1")
	AddConversationOption(conversation, "I am on my way there now.")
	StartConversation(conversation, NPC, Spawn, "Have you successfully slain the Grender?")
	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I seek permission to hunt the Grender!", "dlg_7_1")
		AddConversationOption(conversation, "Nothing at the moment, Your Majesty.")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Hall.  What is it you seek?")
	end

	if convo==71 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, Ma'am.", "dlg_71_1")
		AddConversationOption(conversation, "No, Ma'am.")
		StartConversation(conversation, NPC, Spawn, "Are you prepared for the citizenship ceremony, XXXXXXXX?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, Ma'am!", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Excellent!  I've heard of you from my cousin, Lady Katri.  She has been quite pleased with your progress.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I don't know what to say!", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "She's so pleased, in fact, that she considers the completion of this deed sufficient to prove your spirit's awakening.  .. GetName(Spawn) .. . you have successfully completed your Rite of Passage! Congratulations!")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you!", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Your dedication to Kelethin has been admirable.  Go now and receive your reward from Lady Katri.  Good luck to you always, .. GetName(Spawn) .. .  May Tunare bless you.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I've heard them, too.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Ah, so you're the one who has proven its existence! You wouldn't believe some of the tales I've been hearing about it.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, Ma'am.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Kelethin is grateful for your assistance.  This will be an excellent challenge for you.  Go, then, and come see me when you have completed this task.")
end

function dlg_71_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I have.", "dlg_71_2")
	AddConversationOption(conversation, "I must think about it further.")
	StartConversation(conversation, NPC, Spawn, "You have renounced your allegiance to the cities which have given you shelter, seeking to serve the city of Kelethin and to promote Growth throughout Norrath?")
end

function dlg_71_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I have.", "dlg_71_3")
	AddConversationOption(conversation, "I knew I was forgetting something.")
	StartConversation(conversation, NPC, Spawn, "You have claimed all your worldly possessions from your old home and bank accounts, enabling you to put roots in your new community without longing for the old?")
end

function dlg_71_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I do.", "dlg_71_4")
	AddConversationOption(conversation, "I need a moment to gather my thoughts!")
	StartConversation(conversation, NPC, Spawn, "XXXXXXXX, your works have proven your commitment to Kelethin.  Your services will enable us to continue our work towards the promotion and protection of Growth, both in Faydwer and abroad.  Do you make known your commitment here, in the presence of myself and others, forsaking allegiance to all other cities in Norrath?")
end

function dlg_71_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I do.", "dlg_71_5")
	StartConversation(conversation, NPC, Spawn, "Then so be it:  you shall become a citizen of Kelethin, defender of the Fae of Kelethin and a guardian of the sacred powers of Growth.  Do you solemnly affirm that you will fulfill your obligations to these principles without hesitation?")
end

function dlg_71_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, Ma'am.", "dlg_71_6")
	StartConversation(conversation, NPC, Spawn, "Welcome to Kelethin, .. GetName(Spawn) .. . I am very glad you will be one of us.  You may seek out our local trainers if you have need of updating any training you received previously.  Good luck, Leighlah.")
end

