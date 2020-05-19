--[[
	Script Name	: SpawnScripts/FrostfangSea/TrainerGaniMaccusson.lua
	Script Purpose	: Trainer Gani Maccusson <Knowledge of Repairs and Banking>
	Script Author	:theFoof
	Script Date	: 2013.5.19
	Script Notes	:
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
	first_chat(NPC, Spawn)
end

function first_chat(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    local choice = math.random(1,2)
	if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1041.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "Tell me about banking.", "bank_1")
	    AddConversationOption(conversation, "Tell me about mending items.", "mend_1")
	    AddConversationOption(conversation, "I'll return for training later.")
	    StartConversation(conversation, NPC, Spawn, "I can explain the finer points of banking and mending to you if you like, " .. GetName(Spawn) .. ". Would you care to hear about either?")
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1041.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me about banking.", "bank_1")
		AddConversationOption(conversation, "Tell me about mending items.", "mend_1")
		AddConversationOption(conversation, "I'll return for training later.")
		StartConversation(conversation, NPC, Spawn, "I can explain the finer points of banking and mending to you if you like, " .. GetName(Spawn) .. ". Would you care to hear about either?")
	end
end

function bank_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "bank_2")
	StartConversation(conversation, NPC, Spawn, "You may already have an account set up. Speak with Norfryd Brisbane to access your account.  You can access your bank account from cities allied with New Halas as well.")
end

function bank_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "bank_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function bank_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, 'What are "shared" bank slots?', "bank_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function bank_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "bank_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are of the same alignment. Lore and No-Trade items cannot be put into the shared slots.")
end

function bank_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "mend_1")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function mend_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "bank_1")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender to get them repaired.  Luckily, Bull the Crafty has set up his work station for mending here, on Pilgrims' Landing.")
end
