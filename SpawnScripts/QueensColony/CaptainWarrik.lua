--[[
    Script Name    : SpawnScripts/QueensColony/CaptainWarrik.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Captain Warrik dialog
    Modified Date  : 2020.04.03
    Modified by    : premierio015
    Notes             : Added animations
--]]

function spawn(NPC)

end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int001.mp3", "", "salute", 204642470, 358524335, Spawn)
    AddConversationOption(conversation, "Teach me about interacting with people and objects around Norrath.", "dlg_6_1")
    AddConversationOption(conversation, "I'll return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Greetings," .. GetName(Spawn) .. ". You're the new addition to the colony that we've been hearing about. I've been stationed here by the queen to show you ways to interact with the world around you.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int002.mp3", "", "nod", 3266378152, 2419021702, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "dlg_6_2")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "dlg_6_5")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "dlg_6_10")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "dlg_6_13")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "You can interact with several types of individuals and items. Among these are other player characters, non-player characters, objects in the world, and items in your inventory.")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int003.mp3", "", "", 2351145322, 214243520, Spawn)
	AddConversationOption(conversation, "How can I tell which actions I can take?", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "You can perform a number of actions by right-clicking on a nearby player that you see. You can invite them to a group, follow them, talk to them, inspect their equipment, trade with them, and other choices. Some actions can only be taken while you are in a group with them.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int004.mp3", "", "nod", 217492850, 1476210113, Spawn)
	AddConversationOption(conversation, "How do I talk to other players?", "dlg_6_4")
	StartConversation(conversation, NPC, Spawn, "If one of the right-click choices is grey, it means it is unavailable. You either need to be closer to the other player or be grouped with them.")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int005.mp3", "", "nod", 499804299, 1158500700, Spawn)
	AddConversationOption(conversation, "How do I interact with non-player characters?", "dlg_6_5")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "dlg_6_10")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "dlg_6_13")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "If you are near another player, you can type something on the command line of your Chat window and press enter. All other nearby players can see this text. To send a private message, right-click on the character and select the 'tell' option, or hit the T key and type their name.")
end

function dlg_6_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int006.mp3", "", "", 887410160, 3920006297, Spawn)
	AddConversationOption(conversation, "How do I tell the difference?", "dlg_6_6")
	StartConversation(conversation, NPC, Spawn, "There are a variety of non-player characters (NPCs) around Norrath. Some of them are there to talk to or buy from, while others are meant to fight.")
end

function dlg_6_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int007.mp3", "", "", 2117851027, 1566096416, Spawn)
	AddConversationOption(conversation, "Are there different ways to interact with a single NPC?", "dlg_6_7")
	StartConversation(conversation, NPC, Spawn, "The shape of your mouse pointer when you move it over an NPC indicates the primary means of interaction. If the pointer becomes a speech bubble, you can talk to that NPC. If it becomes crossed swords, you can attack them. If it looks like a stack of coins, that's a merchant.")
end

function dlg_6_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int008.mp3", "", "nod", 4204591829, 775598592, Spawn)
	AddConversationOption(conversation, "Are there multiple ways to talk to an NPC?", "dlg_6_8")
	StartConversation(conversation, NPC, Spawn, "You can see all the ways you can interact with an NPC by right-clicking on it. If an option is grey, you probably need to be closer to it.")
end

function dlg_6_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int009.mp3", "", "chuckle", 3050147178, 1058091559, Spawn)
	AddConversationOption(conversation, "How do I go about attacking an NPC?", "dlg_6_9")
	StartConversation(conversation, NPC, Spawn, "Well, you're talking to me, so you know at least one way! You can either right-click and select 'hail,' click on them if that is their default action, or target them and hit the H key.")
end

function dlg_6_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int010.mp3", "", "nod", 3207862275, 1652184320, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "dlg_6_2")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "dlg_6_5")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "dlg_6_10")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "dlg_6_13")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To learn about combat, talk to Trainer Hayl McGuinness near the western archway. To learn about evaluating your opponents, talk to Trainer Marla Gilliam, who is near Hayl. Both these trainers provide information vital to your success as an adventurer.")
end

function dlg_6_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int011.mp3", "", "", 986431613, 4262526566, Spawn)
	AddConversationOption(conversation, "How do I tell what the glowing object will do?","dlg_6_11")
	StartConversation(conversation, NPC, Spawn, "If something glows when you move your mouse over it, you can interact with it. It might be a door or gate that takes you to another location, a book you see on a table, a chest you can loot, or another type of object. Some items only glow if you are on a quest to find them.")
end

function dlg_6_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int012.mp3", "", "nod", 281123238, 3770593908, Spawn)
	AddConversationOption(conversation, "Can anything bad happen by clicking on an object?", "dlg_6_12")
	StartConversation(conversation, NPC, Spawn, "Sometimes you'll receive information on what the object will do when you hold your mouse over it. Other times you will need to right-click on the object to see what action you can take with it.")
end

function dlg_6_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int013.mp3", "", "scold", 22184547, 714173495, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "dlg_6_2")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "dlg_6_5")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "dlg_6_13")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Be wary of clicking on an object when you don't know what it will do, as something unexpected could happen. You might draw the attention of someone who didn't want you to touch it, or might end up somewhere you didn't plan to go.")
end

function dlg_6_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int014.mp3", "", "", 3003386223, 1374934830, Spawn)
	AddConversationOption(conversation, "How do I know what I can do with an item?", "dlg_6_14")
	StartConversation(conversation, NPC, Spawn, "Sometimes you'll receive items in your inventory, such as when you complete a quest or loot a chest from a fallen opponent. Other times, you'll receive an item by clicking on a glowing object you see in the world, or that is given to you by another player.")
end

function dlg_6_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int015.mp3", "", "", 921421095, 934280804, Spawn)
	AddConversationOption(conversation, "What are some common things I can do with items?", "dlg_6_15")
	StartConversation(conversation, NPC, Spawn, "Open your inventory with the I key, or open up all bags you are carrying by pressing the B key. You can bring up a menu of choices for what you can do with an item by right-clicking on it. Double-clicking the left mouse button on something in your inventory will try to do that item's default action.")
end

function dlg_6_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int016.mp3", "", "", 3594960522, 2732369829, Spawn)
	AddConversationOption(conversation, "What about other types of items?", "dlg_6_16")
	StartConversation(conversation, NPC, Spawn, "If the item is a piece of armor or a weapon, you can equip it. If it's a book or a note, you can read it. If it is food or drink, you can consume it. Some items, such as furniture, can be placed while you are inside the house or apartment you own.")
end

function dlg_6_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_warrik/tutorial_island02_revamp/trainers/world_interaction/world_int017.mp3", "", "nod", 1124732255, 409658595, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "dlg_6_2")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "dlg_6_5")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "dlg_6_10")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Some items in your inventory can give you quests or provide other benefits. Right-click on items in your inventory and select the 'Examine' option to learn more about any item you are carrying.")
end


