--[[
	Script Name	: SpawnScripts/Stormhold/SirValinayle.lua
	Script Purpose	: Sir Valinayle 
	Script Author	: TyroneSWG
	Script Date	: 2020.06.12
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/callout_64.mp3", "This way, fair adventurer!  I hold the key to the riddle of hidden treasure.", "beckon", 1716252141, 4089896987, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/cap_64.mp3", "Please! You must destroy him! If you stay here, he will surely ambush and kill us all!", "beg", 2691414939, 1655329377, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/task02_64.mp3", "I'm afraid I cannot offer you anything yet, my friend.  Now, quit wasting my time and finish what you've begun!", "no", 2113863262, 2263319370, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/weak01_64.mp3", "Please! It's not as if I asked you to bring me back from the dead.  I don't want to see you again until you finish your task!", "sigh", 1392983189, 1110575775, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script15_64.mp3", "", "", 4276722630, 4280487983, Spawn)
		AddConversationOption(conversation, "I'll think about it.  Goodbye.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Excellent! I appreciate your help, my friend. If you have any more time, please feel free to return and visit me again!")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script01_64.mp3", "", "", 2298163488, 3689217989, Spawn)
		AddConversationOption(conversation, "What?  Calm down what are you talking about!", "dlg_3_1")
		AddConversationOption(conversation, "Good, I hope whatever it is hurts a lot!")
		StartConversation(conversation, NPC, Spawn, "Thank goodness you returned!  It's terrible, just awful, I tell you!")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_5_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_7_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_8_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_9_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_10_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_11_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_12_1")
		AddConversationOption(conversation, "Yeah right, I don't have time to waste with ghosts and goblins.  Goodbye!")
		StartConversation(conversation, NPC, Spawn, "Well, glad you made it finally.  I was beginning to wonder if you were going to show up at all!")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script15_64.mp3", "", "", 4276722630, 4280487983, Spawn)
		AddConversationOption(conversation, "I'll think about it.  Goodbye.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Excellent! I appreciate your help, my friend. If you have any more time, please feel free to return and visit me again!")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script01_64.mp3", "", "", 2298163488, 3689217989, Spawn)
		AddConversationOption(conversation, "What?  Calm down what are you talking about!", "dlg_15_1")
		AddConversationOption(conversation, "Good, I hope whatever it is hurts a lot!")
		StartConversation(conversation, NPC, Spawn, "Thank goodness you returned!  It's terrible, just awful, I tell you!")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script01_64.mp3", "", "", 2298163488, 3689217989, Spawn)
		AddConversationOption(conversation, "What?  Calm down what are you talking about!", "dlg_16_1")
		AddConversationOption(conversation, "Good, I hope whatever it is hurts a lot!")
		StartConversation(conversation, NPC, Spawn, "Thank goodness you returned!  It's terrible, just awful, I tell you!")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script01_64.mp3", "", "", 2298163488, 3689217989, Spawn)
		AddConversationOption(conversation, "What?  Calm down what are you talking about!", "dlg_17_1")
		AddConversationOption(conversation, "Good, I hope whatever it is hurts a lot!")
		StartConversation(conversation, NPC, Spawn, "Thank goodness you returned!  It's terrible, just awful, I tell you!")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script01_64.mp3", "", "", 2298163488, 3689217989, Spawn)
		AddConversationOption(conversation, "What?  Calm down what are you talking about!", "dlg_18_1")
		AddConversationOption(conversation, "Good, I hope whatever it is hurts a lot!")
		StartConversation(conversation, NPC, Spawn, "Thank goodness you returned!  It's terrible, just awful, I tell you!")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script02_64.mp3", "", "", 4004435203, 430849973, Spawn)
		AddConversationOption(conversation, "Relax, take a deep... wait.  Just tell me what's going on!", "dlg_19_1")
		AddConversationOption(conversation, "Finally after all this time it's good to see you grovel.  Now, I must leave.")
		StartConversation(conversation, NPC, Spawn, "He's after me!  The gods know how he discovered me, but he's sending them all to destroy me.  I've already died once, and trust me, that wasn't the most pleasant experience!")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script02_64.mp3", "", "", 4004435203, 430849973, Spawn)
		AddConversationOption(conversation, "Relax, take a deep... wait.  Just tell me what's going on!", "dlg_3_2")
		AddConversationOption(conversation, "Finally after all this time it's good to see you grovel.  Now, I must leave.")
	StartConversation(conversation, NPC, Spawn, "He's after me!  The gods know how he discovered me, but he's sending them all to destroy me.  I've already died once, and trust me, that wasn't the most pleasant experience!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script03_64.mp3", "", "", 2738232666, 4257491883, Spawn)
		AddConversationOption(conversation, "Okay, tell me what can I do to help?", "dlg_3_3")
		AddConversationOption(conversation, "Sorry, this one sounds a bit too difficult.  Good luck with Lord... whomever.")
	StartConversation(conversation, NPC, Spawn, "Lord Gydek, you fool, that's who!  He's stirred up his entire camp and they want me.  Please, you must help!")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script04_64.mp3", "", "", 491010397, 1674796, Spawn)
		AddConversationOption(conversation, "All right, don't worry.  I'll take care of this Lord Gydek.  Just calm down will you.", "dlg_3_4")
		AddConversationOption(conversation, "A troll?  This sounds a little more dangerous than what I was prepared for.  Time for me to get going.  Good luck!")
	StartConversation(conversation, NPC, Spawn, "You can kill him, that's what you can do!  That wretched troll, I thought he was only a legend.  But I've seen him in my dreams.  Please, he killed me! I'm sure of it! I'll do anything, but please, you must help!")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script05_64.mp3", "", "", 1032096322, 2918389414, Spawn)
		AddConversationOption(conversation, "All right no problem.  I'll see you then!  ", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Thank you, my friend. I knew I could depend on you. You'll need to get a large group of your friends to defeat him. He has an army at his disposal and will stop at nothing to find me. Return to me after you kill him!")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script21_64.mp3", "", "", 3783994912, 4037347686, Spawn)
		AddConversationOption(conversation, "Yes, I am the great defender of Norrath!  Now where is the treasure?", "dlg_8_2")
		AddConversationOption(conversation, "Sorry, you must have me confused with someone else.  I have to be going now.  Good luck!")
	StartConversation(conversation, NPC, Spawn, "Why do you think I called out to you?  I had foreseen your arrival, and now I must share my knowledge with you.  Are you not the great defender of Norrath?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script21_64.mp3", "", "", 3783994912, 4037347686, Spawn)
		AddConversationOption(conversation, "Yes, I am the great defender of Norrath!  Now where is the treasure?", "dlg_9_2")
		AddConversationOption(conversation, "Sorry, you must have me confused with someone else.  I have to be going now.  Good luck!")
	StartConversation(conversation, NPC, Spawn, "Why do you think I called out to you?  I had foreseen your arrival, and now I must share my knowledge with you.  Are you not the great defender of Norrath?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script22_64.mp3", "", "", 3839049805, 1239867034, Spawn)
		AddConversationOption(conversation, "Okay, but just a simple service.", "dlg_9_3")
		AddConversationOption(conversation, "Sorry, I'm not interested.  I'm going to leave now.")
	StartConversation(conversation, NPC, Spawn, "Patience, my brave adventurer, patience. Soon, all of the riches of Stormhold will be yours. I ask that you perform a simple service on my behalf. Is that too much for one as powerful as you?")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script21_64.mp3", "", "", 3783994912, 4037347686, Spawn)
		AddConversationOption(conversation, "Yes, I am the great defender of Norrath!  Now where is the treasure?", "dlg_10_2")
		AddConversationOption(conversation, "Sorry, you must have me confused with someone else.  I have to be going now.  Good luck!")
	StartConversation(conversation, NPC, Spawn, "Why do you think I called out to you?  I had foreseen your arrival, and now I must share my knowledge with you.  Are you not the great defender of Norrath?")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script22_64.mp3", "", "", 3839049805, 1239867034, Spawn)
		AddConversationOption(conversation, "Okay, but just a simple service.", "dlg_10_3")
		AddConversationOption(conversation, "Sorry, I'm not interested.  I'm going to leave now.")
	StartConversation(conversation, NPC, Spawn, "Patience, my brave adventurer, patience. Soon, all of the riches of Stormhold will be yours. I ask that you perform a simple service on my behalf. Is that too much for one as powerful as you?")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script23_64.mp3", "", "", 372992869, 1495453677, Spawn)
		AddConversationOption(conversation, "Sure I can handle that for you!  I'll be back when they're dead.", "dlg_10_4")
		AddConversationOption(conversation, "Fire things, uhh no thanks.  Get someone else to do your dirty work.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I knew you were my savior! Those ridiculous fire things are at it again!  They've destroyed everything with their evil hands.  My precious books were lost to them in a fire, and I want vengeance!")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script21_64.mp3", "", "", 3783994912, 4037347686, Spawn)
		AddConversationOption(conversation, "Yes, I am the great defender of Norrath!  Now where is the treasure?", "dlg_11_2")
		AddConversationOption(conversation, "Sorry, you must have me confused with someone else.  I have to be going now.  Good luck!")
	StartConversation(conversation, NPC, Spawn, "Why do you think I called out to you?  I had foreseen your arrival, and now I must share my knowledge with you.  Are you not the great defender of Norrath?")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script22_64.mp3", "", "", 3839049805, 1239867034, Spawn)
		AddConversationOption(conversation, "Okay, but just a simple service.", "dlg_11_3")
		AddConversationOption(conversation, "Sorry, I'm not interested.  I'm going to leave now.")
	StartConversation(conversation, NPC, Spawn, "Patience, my brave adventurer, patience. Soon, all of the riches of Stormhold will be yours. I ask that you perform a simple service on my behalf. Is that too much for one as powerful as you?")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script23_64.mp3", "", "", 372992869, 1495453677, Spawn)
		AddConversationOption(conversation, "Sure I can handle that for you!  I'll be back when they're dead.", "dlg_11_4")
		AddConversationOption(conversation, "Fire things, uhh no thanks.  Get someone else to do your dirty work.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I knew you were my savior! Those ridiculous fire things are at it again!  They've destroyed everything with their evil hands.  My precious books were lost to them in a fire, and I want vengeance!")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/sir_valinayle/z_no_script24_64.mp3", "", "", 3850259326, 376249428, Spawn)
		AddConversationOption(conversation, "No problem, I'll be back soon!", "dlg_11_5")
	StartConversation(conversation, NPC, Spawn, "Thank you, my friend, thank you.  After you have vanquished them, please return to me, and the secret of the treasure of Befallen shall be yours! Did I say Befallen? I meant Stormhold... Ah how I miss Befallen... these places are so similar I keep getting them confused.")
end