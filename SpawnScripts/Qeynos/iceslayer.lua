--[[
	Script Name		:	iceslayer.lua
	Script Purpose	:	Waypoint Path for iceslayer.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 07:24:41 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_2_1")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
	StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_7_1")
		AddConversationOption(conversation, "No bother... any chores I can help with?")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
		StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_8_1")
		AddConversationOption(conversation, "No bother... any chores I can help with?")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
		StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_9_1")
		AddConversationOption(conversation, "No bother... any chores I can help with?")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
		StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_10_1")
		AddConversationOption(conversation, "No bother... any chores I can help with?")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
		StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_11_1")
		AddConversationOption(conversation, "No bother... any chores I can help with?")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
		StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why didn't he get any sleep last night?", "dlg_12_1")
		AddConversationOption(conversation, "No bother... any chores I can help with?")
		AddConversationOption(conversation, "No problem.  I'll just leave him be.  ")
		StartConversation(conversation, NPC, Spawn, "Pay no attention to Warley down there he just probably didn't sleep last night and is a little grumpy. Isn't that right Warley?")
	end

end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is so scary about the Tomb of Varsoon?", "dlg_2_2")
		AddConversationOption(conversation, "Sounds like a place I don't want to go to myself.  ")
	StartConversation(conversation, NPC, Spawn, "Warley went to the Tomb of Varsoon to prove he wasn't afraid of walking around on those islands. Sure enough, he didn't get to the first bridge before turning tail and running back home. Poor thing ... all grumpy ... no sleep.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It sounds like a place I'd like to explore.", "dlg_2_3")
		AddConversationOption(conversation, "I'll be sure to steer clear from it.  ")
	StartConversation(conversation, NPC, Spawn, "The tomb once held an evil mage - Varsoon the Undying. He was involved in the War of the Plagues centuries ago.  The Cataclysm must have weakened the mage's spells on that place, because he didn't stick around.  The Concordium says that Varsoon is long gone, but you wouldn't catch me dead there!")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be careful.  Thank you for the directions.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Heck, I'll tell you where it is! Turn left as you leave the city gates; go through Klicnik Fields. You'll see the islands the tomb rests on.  You go any further ... well, that's your decision, not mine.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ready, willing and able!")
	StartConversation(conversation, NPC, Spawn, "Chores you ask? I planned on heading out to the caves to gather some spider venom sacs, but if you're willing and able, I'll let you handle this task. I'll need at least five of the sacs.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is so scary about the Tomb of Varsoon?", "dlg_9_2")
		AddConversationOption(conversation, "Sounds like a place I don't want to go to myself.  ")
	StartConversation(conversation, NPC, Spawn, "Warley went to the Tomb of Varsoon to prove he wasn't afraid of walking around on those islands. Sure enough, he didn't get to the first bridge before turning tail and running back home. Poor thing ... all grumpy ... no sleep.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is so scary about the Tomb of Varsoon?", "dlg_10_2")
		AddConversationOption(conversation, "Sounds like a place I don't want to go to myself.  ")
	StartConversation(conversation, NPC, Spawn, "Warley went to the Tomb of Varsoon to prove he wasn't afraid of walking around on those islands. Sure enough, he didn't get to the first bridge before turning tail and running back home. Poor thing ... all grumpy ... no sleep.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It sounds like a place I'd like to explore.", "dlg_10_3")
		AddConversationOption(conversation, "I'll be sure to steer clear from it.  ")
	StartConversation(conversation, NPC, Spawn, "The tomb once held an evil mage - Varsoon the Undying. He was involved in the War of the Plagues centuries ago.  The Cataclysm must have weakened the mage's spells on that place, because he didn't stick around.  The Concordium says that Varsoon is long gone, but you wouldn't catch me dead there!")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is so scary about the Tomb of Varsoon?", "dlg_11_2")
		AddConversationOption(conversation, "Sounds like a place I don't want to go to myself.  ")
	StartConversation(conversation, NPC, Spawn, "Warley went to the Tomb of Varsoon to prove he wasn't afraid of walking around on those islands. Sure enough, he didn't get to the first bridge before turning tail and running back home. Poor thing ... all grumpy ... no sleep.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It sounds like a place I'd like to explore.", "dlg_11_3")
		AddConversationOption(conversation, "I'll be sure to steer clear from it.  ")
	StartConversation(conversation, NPC, Spawn, "The tomb once held an evil mage - Varsoon the Undying. He was involved in the War of the Plagues centuries ago.  The Cataclysm must have weakened the mage's spells on that place, because he didn't stick around.  The Concordium says that Varsoon is long gone, but you wouldn't catch me dead there!")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be careful.  Thank you for the directions.", "dlg_11_4")
	StartConversation(conversation, NPC, Spawn, "Heck, I'll tell you where it is! Turn left as you leave the city gates; go through Klicnik Fields. You'll see the islands the tomb rests on.  You go any further ... well, that's your decision, not mine.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ready, willing and able!")
	StartConversation(conversation, NPC, Spawn, "Chores you ask? I planned on heading out to the caves to gather some spider venom sacs, but if you're willing and able, I'll let you handle this task. I'll need at least five of the sacs.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "Good! Bring them back here as soon as you have them.")
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 541.45, -3.5, 136.91, 2, 0)
	MovementLoopAddLocation(NPC, 526.93, -3.5, 136.14, 2, 0)
	MovementLoopAddLocation(NPC, 510.52, -3.48, 134.38, 2, 0)
	MovementLoopAddLocation(NPC, 511.79, -3.48, 125.96, 2, 0)
	MovementLoopAddLocation(NPC, 527.66, -3.5, 128.38, 2, 0)
	MovementLoopAddLocation(NPC, 542.06, -3.5, 128.03, 2, 0)
	MovementLoopAddLocation(NPC, 542.42, -5.55, 121.07, 2, 0)
	MovementLoopAddLocation(NPC, 552.51, -5.55, 121.16, 2, 0)
	MovementLoopAddLocation(NPC, 552.24, -3.5, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, 566.13, -3.5, 128.07, 2, 0)
	MovementLoopAddLocation(NPC, 582.44, -3.48, 125.97, 2, 0)
	MovementLoopAddLocation(NPC, 583.6, -3.48, 135.08, 2, 0)
	MovementLoopAddLocation(NPC, 567.53, -3.5, 136.55, 2, 0)
	MovementLoopAddLocation(NPC, 553.23, -3.5, 136.78, 2, 0)
	MovementLoopAddLocation(NPC, 567.53, -3.5, 136.55, 2, 0)
	MovementLoopAddLocation(NPC, 583.6, -3.48, 135.08, 2, 0)
	MovementLoopAddLocation(NPC, 582.44, -3.48, 125.97, 2, 0)
	MovementLoopAddLocation(NPC, 566.13, -3.5, 128.07, 2, 0)
	MovementLoopAddLocation(NPC, 552.24, -3.5, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, 552.51, -5.55, 121.16, 2, 0)
	MovementLoopAddLocation(NPC, 542.42, -5.55, 121.07, 2, 0)
	MovementLoopAddLocation(NPC, 542.06, -3.5, 128.03, 2, 0)
	MovementLoopAddLocation(NPC, 527.66, -3.5, 128.38, 2, 0)
	MovementLoopAddLocation(NPC, 511.79, -3.48, 125.96, 2, 0)
	MovementLoopAddLocation(NPC, 510.52, -3.48, 134.38, 2, 0)
	MovementLoopAddLocation(NPC, 526.93, -3.5, 136.14, 2, 0)
	MovementLoopAddLocation(NPC, 541.45, -3.5, 136.91, 2, 0)
end


