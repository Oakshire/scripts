--[[
	Script Name	: SpawnScripts/EnchantedLands/SirTatters.lua
	Script Purpose	: Sir Tatters 
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_1_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	if convo==2 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Consider the mission a success. ", "dlg_2_1")
		AddConversationOption(conversation, "I need to return to the field of battle. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You've returned from the wilds and from the horrors of battle! Did you damage the enemy and force them to take note of the far reaching might of this village?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/optional1/sir_tatters/enchanted/sir_tatters008.mp3", "", "", 3671903342, 783233779, Spawn)
		AddConversationOption(conversation, "I am off to do my duty.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "What! Back already? Will you let evil overrun this land by shirking your duties? Get out there and do what must be done.")
	end

	if convo==55 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_55_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
		StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	end

	if convo==56 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_56_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
		StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	end

	if convo==57 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_57_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
		StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	end

	if convo==58 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_58_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
		StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	end

	if convo==59 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_59_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
		StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	end

	if convo==60 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What village? ", "dlg_60_1")
		AddConversationOption(conversation, "I am not going to get into a conversation with a scarecrow. Farewell. ")
		StartConversation(conversation, NPC, Spawn, "Greetings, traveler! As sole defender of this humble village, I welcome you. ")
	end

	if convo==61 then
		PlayFlavor(NPC, "voiceover/english/optional1/sir_tatters/enchanted/sir_tatters008.mp3", "", "", 3671903342, 783233779, Spawn)
		AddConversationOption(conversation, "I am off to do my duty.", "dlg_61_1")
		StartConversation(conversation, NPC, Spawn, "What! Back already? Will you let evil overrun this land by shirking your duties? Get out there and do what must be done.")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Can I help?", "dlg_1_2")
		AddConversationOption(conversation, "I don't talk to delusional scarecrows. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "Have you lost your mind to the mists! I admit we are a small village. So many of the meek have fallen prey to the evil denizens, plucked away while I slumbered! I am amazed that you even breached the wall of evil that surrounds us. But you are here now, but have no fear, Sir Tatters will not let this village fall to evil! Never! ")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How can I help you?", "dlg_1_3")
		AddConversationOption(conversation, "I am afraid I can't help just yet. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I appreciate the offer, traveler, but the defense of this village is my duty charged to me by the call of the creator. If you seek to help, you can aid me.  ")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am capable of repelling the enemy. ", "dlg_1_4")
		AddConversationOption(conversation, "I cannot quest for you right now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "As you can see, there are few people left for me to protect and since the demise of the creator, no one has been around to direct the engineering of new village walls to keep the evil denizens from entering and devouring the remaining populace.  ")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay. I will go lessen the threat. ", "dlg_1_5")
		AddConversationOption(conversation, "I cannot quest for you right now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I am the chosen defender of the people! The creator did not stuff you full of straw and slap a pumpkin on your neck! No, no, no. I need you to infiltrate the land of our enemy and lessen their threat. That is your duty.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Farewell.", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "That is the spirit. I would do it myself, but to step away from here would be disobeying the creator's orders. No one shall pluck the residents from this village not while Sir Tatters is on watch!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is your command?", "dlg_2_2")
		AddConversationOption(conversation, "Forget it. I am not taking orders from a pumpkin on a stick.")
	StartConversation(conversation, NPC, Spawn, "Have at thee foul villains! You have served the village well. And your service is still desired. We shall show the enemy what for!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What should I do? ", "dlg_2_3")
		AddConversationOption(conversation, "I am not ready to venture into goblin country. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Deep beyond the great gates and far to the north, rests my faithful squire Rustbucket. I sent him into the heart of goblin country to spy upon the vile fiends who dare to pluck the villagers. Rustbucket has yet to report back. I fear the worst.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Does he need my help?", "dlg_2_4")
		AddConversationOption(conversation, "I am not ready to venture into goblin country. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I sent my squire to infiltrate the goblin base near the brook. The goblins overtook  one of the creator's laboratories and it's there that Rustbucket was sent to gather information under the slyest of disguises. ")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What culprit?", "dlg_2_5")
		AddConversationOption(conversation, "I cannot quest for you right now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "There is only so much my faithful squire Rustbucket can do. Mute since birth and weak as a jinglejam root, he is not fit enough to survive beyond our border, but you are from the outlands. You can reach him and discover the culprit's name.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What did the goblin look like? ", "dlg_2_6")
		AddConversationOption(conversation, "I cannot quest for you right now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "A goblin infiltrator crept upon the village in my slumber and swiped from me a large clump of my stuffing. I would have cut the villain in two if Squire Rustbucket was not paralyzed with fear. Poor chap was unable to wake me. Blast you, foul burglar!!")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go speak with Squire Rustbucket.", "dlg_2_7")
	StartConversation(conversation, NPC, Spawn, "Did you not hear, traveler? I was in slumber! Squire Rustbucket was sent to discover the name and whereabouts of the burglar. Perhaps you can force the words from Rustbucket. Now stand back! Sir Tatters is on watch! Beware all you evildoers!")
end

