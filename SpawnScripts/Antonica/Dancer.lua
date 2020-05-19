--[[
	Script Name	: SpawnScripts/Antonica/Dancer.lua
	Script Purpose	: Dancer 
	Script Author	: John Adams
	Script Date	: 2016.09.03
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

		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I tried my best, but their numbers are strong.", "dlg_0_1")
		AddConversationOption(conversation, "You so quickly forget the world's greatest adventurer.")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I tried my best, but their numbers are strong.", "dlg_1_1")
		AddConversationOption(conversation, "You so quickly forget the world's greatest adventurer.")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I tried my best, but their numbers are strong.", "dlg_2_1")
		AddConversationOption(conversation, "You so quickly forget the world's greatest adventurer.")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "Sighard gave me this special arrow.", "dlg_4_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "The arrow is in the training dummy.", "dlg_5_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_6_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "The arrow is in the training dummy.", "dlg_7_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I tried my best, but their numbers are strong.", "dlg_8_1")
		AddConversationOption(conversation, "You so quickly forget the world's greatest adventurer.")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I tried my best, but their numbers are strong.", "dlg_13_1")
		AddConversationOption(conversation, "You so quickly forget the world's greatest adventurer.")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_19_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_20_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_21_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "Sighard gave me this special arrow.", "dlg_30_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "Sighard gave me this special arrow.", "dlg_31_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==33 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_33_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "Sighard gave me this special arrow.", "dlg_35_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_36_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==37 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_37_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==39 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "Sighard gave me this special arrow.", "dlg_39_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==42 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "The arrow is in the training dummy.", "dlg_42_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==59 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_59_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==60 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_60_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==61 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_61_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==62 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "dlg_62_1")
		AddConversationOption(conversation, "I cannot chat now. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==63 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_63_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

	if convo==66 then
		PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
		AddConversationOption(conversation, "I cannot chat now. Farewell.", "dlg_66_1")
		StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona008.mp3", "", "", 3282299207, 1917374337, Spawn)
		AddConversationOption(conversation, "They will know me when I rid the woods of them!")
	StartConversation(conversation, NPC, Spawn, "Forget the world's greatest? I think not, but your name may have slipped my mind. Ha! Fear not, my brave courier. The gnolls of Archer Woods are the only ones near here that have yet to know your name.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona010.mp3", "", "", 3182250399, 3459878429, Spawn)
		AddConversationOption(conversation, "Thank you, Dancer.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Your best is all that we ask. I shall reward you for servicing what remains of Archer Woods. I shall mention your name among my friends.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona011.mp3", "", "", 2906971481, 4178549824, Spawn)
		AddConversationOption(conversation, "Is your name really Dancer?", "dlg_2_3")
		AddConversationOption(conversation, "Thank you, Dancer.")
	StartConversation(conversation, NPC, Spawn, "By the way, courier, Sighard asked me about you. He wishes to speak with you.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona003.mp3", "", "", 1306460538, 3525298419, Spawn)
		AddConversationOption(conversation, "What is this arrow?", "dlg_3_2")
		AddConversationOption(conversation, "I shall do as requested.")
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona004.mp3", "", "", 2295000938, 2111794040, Spawn)
		AddConversationOption(conversation, "I understand.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "The arrow is a special marker for some friends of mine.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona003.mp3", "", "", 1306460538, 3525298419, Spawn)
		AddConversationOption(conversation, "What is this arrow?", "dlg_4_2")
		AddConversationOption(conversation, "I shall do as requested.")
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona004.mp3", "", "", 2295000938, 2111794040, Spawn)
		AddConversationOption(conversation, "I understand.", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "The arrow is a special marker for some friends of mine.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona005.mp3", "", "", 3454016717, 1472655172, Spawn)
		AddConversationOption(conversation, "I did not see any Trusaris.", "dlg_5_2")
		AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "Thank you, courier. I trust you have done as I requested. If not, Trusaris will tell me. He sees all in Archer Woods, including your every step.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona006.mp3", "", "", 4166511705, 1130362343, Spawn)
		AddConversationOption(conversation, "I will help clear his home.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Trusaris is the great oak of Archer Woods. He has lived in these hills for many ages. He has seen much grief in his lifetime. Now gnolls are taking over what is left of his home.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona009.mp3", "", "", 2472618059, 207846586, Spawn)
		AddConversationOption(conversation, "I shall do my best.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "You think you can clear all of Archer Woods? I doubt that, but I would be glad to see you try, as would Trusaris.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_6_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona002.mp3", "", "", 4018838958, 826695955, Spawn)
		AddConversationOption(conversation, "I will find Sighard and see that he gets the note.", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona005.mp3", "", "", 3454016717, 1472655172, Spawn)
		AddConversationOption(conversation, "I did not see any Trusaris.", "dlg_7_2")
		AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "Thank you, courier. I trust you have done as I requested. If not, Trusaris will tell me. He sees all in Archer Woods, including your every step.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona006.mp3", "", "", 4166511705, 1130362343, Spawn)
		AddConversationOption(conversation, "I will help clear his home.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Trusaris is the great oak of Archer Woods. He has lived in these hills for many ages. He has seen much grief in his lifetime. Now gnolls are taking over what is left of his home.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona009.mp3", "", "", 2472618059, 207846586, Spawn)
		AddConversationOption(conversation, "I shall do my best.", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "You think you can clear all of Archer Woods? I doubt that, but I would be glad to see you try, as would Trusaris.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona010.mp3", "", "", 3182250399, 3459878429, Spawn)
		AddConversationOption(conversation, "Thank you, Dancer.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Your best is all that we ask. I shall reward you for servicing what remains of Archer Woods. I shall mention your name among my friends.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona011.mp3", "", "", 2906971481, 4178549824, Spawn)
		AddConversationOption(conversation, "Is your name really Dancer?", "dlg_8_3")
		AddConversationOption(conversation, "Thank you, Dancer.")
	StartConversation(conversation, NPC, Spawn, "By the way, courier, Sighard asked me about you. He wishes to speak with you.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona007.mp3", "", "", 1777708143, 1227602978, Spawn)
		AddConversationOption(conversation, "Farewell, Dancer.", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "There was a dark time in my life when dancing was not a thing of joy, but a subjugated torment. It is a time I choose not to recall. But Dancer is my name among my new circle of friends, friends you may some day meet.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona010.mp3", "", "", 3182250399, 3459878429, Spawn)
		AddConversationOption(conversation, "Thank you, Dancer.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Your best is all that we ask. I shall reward you for servicing what remains of Archer Woods. I shall mention your name among my friends.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona011.mp3", "", "", 2906971481, 4178549824, Spawn)
		AddConversationOption(conversation, "Is your name really Dancer?", "dlg_13_3")
		AddConversationOption(conversation, "Thank you, Dancer.")
	StartConversation(conversation, NPC, Spawn, "By the way, courier, Sighard asked me about you. He wishes to speak with you.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona007.mp3", "", "", 1777708143, 1227602978, Spawn)
		AddConversationOption(conversation, "Farewell, Dancer.", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "There was a dark time in my life when dancing was not a thing of joy, but a subjugated torment. It is a time I choose not to recall. But Dancer is my name among my new circle of friends, friends you may some day meet.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_20_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_21_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona002.mp3", "", "", 4018838958, 826695955, Spawn)
		AddConversationOption(conversation, "I will find Sighard and see that he gets the note.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona003.mp3", "", "", 1306460538, 3525298419, Spawn)
		AddConversationOption(conversation, "What is this arrow?", "dlg_31_2")
		AddConversationOption(conversation, "I shall do as requested.")
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
end

function dlg_33_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_33_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_33_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona002.mp3", "", "", 4018838958, 826695955, Spawn)
		AddConversationOption(conversation, "I will find Sighard and see that he gets the note.", "dlg_33_3")
	StartConversation(conversation, NPC, Spawn, "I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona003.mp3", "", "", 1306460538, 3525298419, Spawn)
		AddConversationOption(conversation, "What is this arrow?", "dlg_35_2")
		AddConversationOption(conversation, "I shall do as requested.")
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
end

function dlg_35_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona004.mp3", "", "", 2295000938, 2111794040, Spawn)
		AddConversationOption(conversation, "I understand.", "dlg_35_3")
	StartConversation(conversation, NPC, Spawn, "The arrow is a special marker for some friends of mine.")
end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_37_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_37_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona002.mp3", "", "", 4018838958, 826695955, Spawn)
		AddConversationOption(conversation, "I will find Sighard and see that he gets the note.", "dlg_37_3")
	StartConversation(conversation, NPC, Spawn, "I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona003.mp3", "", "", 1306460538, 3525298419, Spawn)
		AddConversationOption(conversation, "What is this arrow?", "dlg_39_2")
		AddConversationOption(conversation, "I shall do as requested.")
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
end

function dlg_39_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona004.mp3", "", "", 2295000938, 2111794040, Spawn)
		AddConversationOption(conversation, "I understand.", "dlg_39_3")
	StartConversation(conversation, NPC, Spawn, "The arrow is a special marker for some friends of mine.")
end

function dlg_42_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona005.mp3", "", "", 3454016717, 1472655172, Spawn)
		AddConversationOption(conversation, "I did not see any Trusaris.", "dlg_42_2")
		AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "Thank you, courier. I trust you have done as I requested. If not, Trusaris will tell me. He sees all in Archer Woods, including your every step.")
end

function dlg_42_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona006.mp3", "", "", 4166511705, 1130362343, Spawn)
		AddConversationOption(conversation, "I will help clear his home.", "dlg_42_3")
	StartConversation(conversation, NPC, Spawn, "Trusaris is the great oak of Archer Woods. He has lived in these hills for many ages. He has seen much grief in his lifetime. Now gnolls are taking over what is left of his home.")
end

function dlg_42_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona009.mp3", "", "", 2472618059, 207846586, Spawn)
		AddConversationOption(conversation, "I shall do my best.", "dlg_42_4")
	StartConversation(conversation, NPC, Spawn, "You think you can clear all of Archer Woods? I doubt that, but I would be glad to see you try, as would Trusaris.")
end

function dlg_60_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_60_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_61_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_61_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_62_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
		AddConversationOption(conversation, "I am always available to assist a frontiersman.", "dlg_62_2")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end

function dlg_62_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona002.mp3", "", "", 4018838958, 826695955, Spawn)
		AddConversationOption(conversation, "I will find Sighard and see that he gets the note.", "dlg_62_3")
	StartConversation(conversation, NPC, Spawn, "I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
end

