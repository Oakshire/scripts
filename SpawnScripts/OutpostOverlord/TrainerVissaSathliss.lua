--[[
	Script Name	: SpawnScripts/OutpostOverlord/TrainerVissaSathliss.lua
	Script Purpose	: Trainer Vissa Sathliss <Knowledge of Repairs and Banking>
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_vissa_sathliss/tutorial_island02_evil_revamp/trainers/mending_banking/vissa_sathliss001.mp3", "", "", 3749329714, 942115959, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_1_1")
	AddConversationOption(conversation, "Tell me about mending items.", "dlg_1_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "I am here to tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_vissa_sathliss/tutorial_island02_evil_revamp/trainers/mending_banking/vissa_sathliss002.mp3", "", "", 1416455798, 3801139838, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "You already have an account with the Freeport Exchange, and luckily for you we have a branch right here in the outpost. Go see Banker Whizratchet to access your account. Additional branches can be found in your home district when you reach the city, as well as other parts of Freeport. You cannot access your bank from Qeynos.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_vissa_sathliss/tutorial_island02_evil_revamp/trainers/mending_banking/vissa_sathliss003.mp3", "", "", 3699958078, 292875506, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_1_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_vissa_sathliss/tutorial_island02_evil_revamp/trainers/mending_banking/vissa_sathliss004.mp3", "", "", 2521528483, 3790132847, Spawn)
	AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_vissa_sathliss/tutorial_island02_evil_revamp/trainers/mending_banking/vissa_sathliss005.mp3", "", "", 3405989423, 121335076, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coins) placed in your shared slots can be accessed by other characters on your account that are also citizens of Freeport. Lore and No-Trade items cannot be put into the shared slots. Characters that are Qeynos citizens cannot access a Freeport bank.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_vissa_sathliss/tutorial_island02_evil_revamp/trainers/mending_banking/vissa_sathliss006.mp3", "", "", 231285175, 3337306547, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "dlg_1_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Tell me about banking.", "dlg_1_1")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you will no longer receive any benefit from them. You can visit a mender to get them repaired, such as Mender Greshar at the outpost forge. Speak to Trainer Jayla Surfrider if you wish to learn more about the effects of death.")
end

