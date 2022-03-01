--[[
	Script Name	: SpawnScripts/Darklight/TrainerChalciceZZylZarin.lua
	Script Purpose	: Trainer Chalcice Z'Zyl'Zarin <Knowledge of Repairs and Banking>
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_3_1")
	AddConversationOption(conversation, "Tell me about mending items.")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "I can explain the finer points of banking and mending to you if you like. Would you care to hear about either?")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me about banking.", "dlg_8_1")
		AddConversationOption(conversation, "Tell me about mending items.")
		AddConversationOption(conversation, "I'll return for training later.")
		StartConversation(conversation, NPC, Spawn, "I can explain the finer points of banking and mending to you if you like. Would you care to hear about either?")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "You may already have an account set up. Go see Gultrin Y'Oussiryn to access your account.  You can access your bank account from cities allied with Neriak as well.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_3_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are of the same alignment. Lore and No-Trade items cannot be put into the shared slots.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "dlg_3_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_3_7")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender to get them repaired.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "You may already have an account set up. Go see Gultrin Y'Oussiryn to access your account.  You can access your bank account from cities allied with Neriak as well.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_8_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are of the same alignment. Lore and No-Trade items cannot be put into the shared slots.")
end

function dlg_8_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "dlg_8_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_8_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_8_7")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender to get them repaired.")
end

