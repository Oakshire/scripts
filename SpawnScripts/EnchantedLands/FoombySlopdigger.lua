--[[
	Script Name	: SpawnScripts/EnchantedLands/FoombySlopdigger.lua
	Script Purpose	: Foomby Slopdigger 
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
		PlayFlavor(NPC, "", "Where did I drop them?!  How did this bag tear!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger001.mp3", "", "", 657177046, 878520688, Spawn)
		AddConversationOption(conversation, "How did you lose your things?", "dlg_1_1")
		AddConversationOption(conversation, "Good luck finding them in this land.")
	StartConversation(conversation, NPC, Spawn, "Hey hey hey! I don't got time for pitter patter chitter chatter.  I got to find my lost baubles and get out of here!")
	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger001.mp3", "", "", 657177046, 878520688, Spawn)
		AddConversationOption(conversation, "How did you lose your things?", "dlg_6_1")
		AddConversationOption(conversation, "Good luck finding them in this land.")
		StartConversation(conversation, NPC, Spawn, "Hey hey hey! I don't got time for pitter patter chitter chatter.  I got to find my lost baubles and get out of here!")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger001.mp3", "", "", 657177046, 878520688, Spawn)
		AddConversationOption(conversation, "How did you lose your things?", "dlg_7_1")
		AddConversationOption(conversation, "Good luck finding them in this land.")
		StartConversation(conversation, NPC, Spawn, "Hey hey hey! I don't got time for pitter patter chitter chatter.  I got to find my lost baubles and get out of here!")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger001.mp3", "", "", 657177046, 878520688, Spawn)
		AddConversationOption(conversation, "How did you lose your things?", "dlg_8_1")
		AddConversationOption(conversation, "Good luck finding them in this land.")
		StartConversation(conversation, NPC, Spawn, "Hey hey hey! I don't got time for pitter patter chitter chatter.  I got to find my lost baubles and get out of here!")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger008.mp3", "", "", 2465448933, 3199429146, Spawn)
		AddConversationOption(conversation, "I haven't found it yet.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the monocle?  I've been waiting forever for you to get back!")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger002.mp3", "", "", 3912708950, 1660270702, Spawn)
		AddConversationOption(conversation, "It is kind of strange that one would have a bag.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "My bag ripped when I ran out of Runny Eye.  Stupid old bag!  No surprise that an evil eye would have a flimsy bag.  What do they need to carry around? They don't have hands or nothin'!")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger003.mp3", "", "", 2418670083, 2304290657, Spawn)
		AddConversationOption(conversation, "I don't remember volunteering.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "So, are you gonna start looking for my lost things or what?!")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger004.mp3", "", "", 2112487192, 3399141446, Spawn)
		AddConversationOption(conversation, "You stole his things didn't you...", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Come on!  Help me find my things so I can get out of here!  Horguz is gonna be furious when he finds out his stuff is missing!")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger005.mp3", "", "", 2981894452, 1648038368, Spawn)
		AddConversationOption(conversation, "I'll help you, but the reward better be good.", "dlg_1_5")
		AddConversationOption(conversation, "Forget it.  Go find your own stolen loot.")
	StartConversation(conversation, NPC, Spawn, "Well his stuff didn't just fall into my bag!  You help me out and I'll give you a reward.  That sounds good, right? That sounds good?")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger006.mp3", "", "", 1974862443, 3815333440, Spawn)
		AddConversationOption(conversation, "Wait, where did you last have the monocle?", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Oh it will be, it will be!  Okay, you go find the cracked gold monocle, and I'll look for the bent silver hoop.  Meet back here after you find it.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foomby_slopdigger/enchanted/quests/foomby_slopdigger007.mp3", "", "", 3563369595, 1191620411, Spawn)
		AddConversationOption(conversation, "I'll meet you back here with the monocle.", "dlg_1_7")
	StartConversation(conversation, NPC, Spawn, "I remember some nasty looking Darkflight fairies hovering around me when I tried it on. They must've grabbed it when it fell out of my bag.  Oooooh ... those winged insects!  Can you believe they'd steal from me?  Go get it back from them!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Where did I drop them?!  How did this bag tear!", "", 1689589577, 4560189, Spawn)
--]]

