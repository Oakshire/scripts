--[[
	Script Name	: SpawnScripts/TimorousDeep/TrainerTleclukalSkyZin.lua
	Script Purpose	: Trainer Tleclukal Sky'Zin <Knowledge of Banking>
	Script Author	: John Adams
	Script Date	: 2009.03.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "beckon", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "beckon", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "beckon", 0, 0, Spawn)
	end

	AddConversationOption(conversation, "Tell me about banking.", "dlg_22_4")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "I can explain the finer points of banking if you like. Would you care to hear about it?")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I open my bank?", "dlg_22_5")
	StartConversation(conversation, NPC, Spawn, "You may already have an account set up. Speak with my associate to access your account.  You can access your bank account from allied cities as well.")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_22_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_22_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What are \"shared\" bank slots?", "dlg_22_7")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_22_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_22_8")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are of the same alignment. Lore and No-Trade items cannot be put into the shared slots.")
end

function dlg_22_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end