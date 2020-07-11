--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyHuckfar.lua
	Script Purpose	: Deputy Huckfar 
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "If I bring her flowers and a jumjum pie, I wonder...", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Where have those hounds gone now?", "flustered", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Argh, my feet hurt!", "squeal", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Deputy Kegie's been wondering about his dog.", "dlg_5_1")
		AddConversationOption(conversation, "Nothing; just stopping by.")
	StartConversation(conversation, NPC, Spawn, "What can I do for you?")
	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You seem very busy.", "dlg_6_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You seem upset.", "dlg_8_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You seem upset.", "dlg_9_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You seem upset.", "dlg_10_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fine.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Ah, you're back.  I'm glad to see you've made it back in one piece.  How's it going?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "While I did enounter a Runnyeye scout at Midwater Bridge, the water seems okay.", "dlg_14_1")
		AddConversationOption(conversation, "Fine.")
		StartConversation(conversation, NPC, Spawn, "Ah, you're back.  I'm glad to see you've made it back in one piece.  How's it going?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_15_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "While I did enounter a Runnyeye scout at Midwater Bridge, the water seems okay.", "dlg_16_1")
		AddConversationOption(conversation, "Fine.")
		StartConversation(conversation, NPC, Spawn, "Ah, you're back.  I'm glad to see you've made it back in one piece.  How's it going?")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "While I did enounter a Runnyeye scout at Midwater Bridge, the water seems okay.", "dlg_17_1")
		AddConversationOption(conversation, "Fine.")
		StartConversation(conversation, NPC, Spawn, "Ah, you're back.  I'm glad to see you've made it back in one piece.  How's it going?")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "While I did enounter a Runnyeye scout at Midwater Bridge, the water seems okay.", "dlg_18_1")
		AddConversationOption(conversation, "Fine.")
		StartConversation(conversation, NPC, Spawn, "Ah, you're back.  I'm glad to see you've made it back in one piece.  How's it going?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_19_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_20_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_21_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_22_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_23_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How are the hounds?", "dlg_24_1")
		AddConversationOption(conversation, "Sorry to have bothered you.")
		StartConversation(conversation, NPC, Spawn, "My feet hurt.  Why do I have to stand here all day long, day after day?")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fine.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Ah, you're back.  I'm glad to see you've made it back in one piece.  How's it going?")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That's too bad.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Deputy Kegie's hound Mutton?  I think he just ran by; I'm still having trouble with those hounds.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sorry, I haven't time to help.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Busy?  Yes, of course I'm busy.  Deputies are always busy and we've no time to do all the investigative work needed!  It's a real challenge, I tell you!")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is it, Deputy?", "dlg_8_2")
		AddConversationOption(conversation, "Okay, hope the hounds return.")
	StartConversation(conversation, NPC, Spawn, "You bet I'm upset!  You see, they asked me to train the hounds and now...now, I can't get them to do anything!  The hounds aren't responding to any of their training.  I think the water in these parts is the cause of the problem.  Hey, I don't suppose you would be willing to...  No, no, never mind.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_huckfar/enchanted/quests/solo_content/deputy_huckfar008.mp3", "", "", 3634437374, 3355158882, Spawn)
		AddConversationOption(conversation, "I'm on my way.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "I only train the hounds here near the Lazy Drain.  There's something in the water that's making them disobey.  Check with the deputies stationed near the Wall to see if they've noticed anything.  There's also that bridge down there near the breach in the wall, the Midwater Bridge.  Inspect the entire bridge very carefully.  I wouldn't put it past those dratted Runnyeye goblins to be poisoning the water!")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome, Deputy Huckfar.", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "I knew those Runneye goblins were up to something!  They aren't poisoning the water, you say?  Very strange!  Something is worrying the hounds.  I'm sure I can figure it out.  Come back and visit any time; I'm sure I can find things for you to do.  Thanks for your help.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_huckfar/enchanted/quests/solo_content/deputy_huckfar005.mp3", "", "", 2897624951, 1547625847, Spawn)
		AddConversationOption(conversation, "Sure, where are they?", "dlg_15_2")
		AddConversationOption(conversation, "Shriekers shrieking?  Sorry, I don't have time.")
	StartConversation(conversation, NPC, Spawn, "They're still being a problem, I'm afraid.  Did you see any shriekers along your way here?  I've been wondering if they're causing the problem with the hounds.  Would you be so kind as to kill the shriekers in the area?")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How many do you want dead?", "dlg_15_3")
		AddConversationOption(conversation, "Another time, Huckfar.")
	StartConversation(conversation, NPC, Spawn, "You can find them not too far from here. They've been a problem in the past with all that shrieking.  You'll find them along the road here near the Drain.  Hunt them down!")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay, I'll be back.", "dlg_15_4")
	StartConversation(conversation, NPC, Spawn, "All of them bats!  Okay, well, the ones in the area anyway.  Do the best you can, if we can thin the population down some I'm sure the hounds will respond to direction again.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_huckfar/enchanted/quests/solo_content/deputy_huckfar015.mp3", "", "", 2657450871, 4293146803, Spawn)
		AddConversationOption(conversation, "Yes I have, Deputy.", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "So you have, the shrieking seems diminished. Are you sure you got them all?")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_huckfar/enchanted/quests/solo_content/deputy_huckfar016.mp3", "", "", 3203954845, 3186296104, Spawn)
		AddConversationOption(conversation, "Sure, I'll be right back.", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "The hounds are much better now, the shrieking must have been playing havoc with them.  They are still having trouble though.  You must have missed some, could you kill more please?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_huckfar/enchanted/quests/solo_content/deputy_huckfar015.mp3", "", "", 2657450871, 4293146803, Spawn)
		AddConversationOption(conversation, "Yes, for the second time.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "So you have, the shrieking seems diminished. Are you sure you got them all?")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_huckfar/enchanted/quests/solo_content/deputy_huckfar023.mp3", "", "", 2895774566, 2547606795, Spawn)
		AddConversationOption(conversation, "You're welcome, Deputy.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "The hounds are much better now.  Thank you very much for your time, here is a little something.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "If I bring her flowers and a jumjum pie, I wonder...", "wink", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Where have those hounds gone now?", "flustered", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Argh, my feet hurt!", "squeal", 1689589577, 4560189, Spawn)
--]]

