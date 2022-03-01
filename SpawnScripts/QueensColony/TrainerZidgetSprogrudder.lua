--[[
    Script Name    : SpawnScripts/QueensColony/TrainerZidgetSprogrudder.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Zidget Sprogrudder dialog
	Modified Date  : 2020.04.03
    Modified by    : premierio015
	Notes      : Added animations
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0)
--]]


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_zidget_sprogrudder/tutorial_island02_revamp/trainers/mending_banking/zidget_sprogrudder001.mp3", "", "beckon", 3939010463, 2059400102, Spawn)
    AddConversationOption(conversation, "Tell me about banking.", "dlg_15_1")
    AddConversationOption(conversation, "Tell me about mending items.", "dlg_15_6")
    AddConversationOption(conversation, "I'll return for training later.")
    StartConversation(conversation, NPC, Spawn, "I can tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
end

function dlg_15_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_zidget_sprogrudder/tutorial_island02_revamp/trainers/mending_banking/zidget_sprogrudder002.mp3", "", "nod", 2569144953, 681435280, Spawn)
    AddConversationOption(conversation, "How do I open my bank?", "dlg_15_2")
    StartConversation(conversation, NPC, Spawn, "You already have an account with the Qeynos Exchange, and luckily for you, we have a branch right here in the colony. Go see Banker Bogfoot to access your account. Additional branches can be found in your home village when you reach the city, as well as other parts of Qeynos. You cannot access your bank from Freeport.")
end

function dlg_15_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_zidget_sprogrudder/tutorial_island02_revamp/trainers/mending_banking/zidget_sprogrudder003.mp3", "", "", 1818090205, 3165962311, Spawn)
    AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_15_3")
    AddConversationOption(conversation, "I'll return for training later.")
    StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_15_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_zidget_sprogrudder/tutorial_island02_revamp/trainers/mending_banking/zidget_sprogrudder004.mp3", "", "agree", 22498702, 4161666959, Spawn)
    AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_15_4")
    StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_15_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_zidget_sprogrudder/tutorial_island02_revamp/trainers/mending_banking/zidget_sprogrudder005.mp3", "", "", 1857727319, 1420810063, Spawn)
    AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_15_5")
    StartConversation(conversation, NPC, Spawn, "Items (but not coins) placed in your shared slots can be accessed by other characters on your account that are also citizens of Qeynos. Lore and No-Trade items cannot be put into the shared slots. Characters that are Freeport citizens cannot access a Qeynos bank.")
end

function dlg_15_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_zidget_sprogrudder/tutorial_island02_revamp/trainers/mending_banking/zidget_sprogrudder006.mp3", "", "nod", 731970945, 2493990127, Spawn)
    AddConversationOption(conversation, "I want to learn about mending items.", "dlg_15_6")
    AddConversationOption(conversation, "I'll return for training later.")
    StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_15_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "", "", "nod", 0, 0)
    AddConversationOption(conversation, "Tell me about banking.", "dlg_15_1")
    AddConversationOption(conversation, "I'll return for training later.")
    StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Mannus at the colony forge, to get them repaired . Speak to Trainer Cheye Seawind if you wish to learn more about the effects of death.")
end