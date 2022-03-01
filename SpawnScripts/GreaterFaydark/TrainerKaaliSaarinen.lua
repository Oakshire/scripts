--[[
	Script Name	: SpawnScripts/GreaterFaydark
	Script Purpose	: Trainer Kaali Saarinen
	Script Author	: Unsafemodder (a.k.a Pokchop1)
	Script Date	: 2013.010.6
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    start(NPC, Spawn)
end

function start(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Tell me about banking", "dlg_1_1")
	AddConversationOption(conversation, "Tell me about mending items.", "dlg_1_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "I can tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
end	

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "How do I open my bank?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "You may already have an account with the Kelethin First Regional Bank. Go see Banker Athinae in Kelethin to access your account. You can access your Kelethin bank account from Qeynos, but not from Freeport.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_1_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see eight general slots and four " .. '"shared" slots. You can put bags or containers in your bank to increase the number of available slots.')
end
		
function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, 'What are "shared" bank slots?', "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the shift key and drag, then enter the quantity.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coins) placed in your shared slots can be accessed by other characters on your account that are also citizens of Kelethin. Lore and No-Trade items cannot be put into the shared slots. Characters that are not Kelethin Citizens cannot access a Kelethin bank. So, you could not access a bank in Qeynos or Freeport.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I want to learn about mending items", "dlg_1_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, 'If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting "Guild Bank".')
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Tell me about banking", "dlg_1_1")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Kaarlo Karpela at Gearheart's Forge in Kelethin, to get them repaired. Speak to Trainer Leianna Teiampa if you wish to learn more about the effects of death.")
end