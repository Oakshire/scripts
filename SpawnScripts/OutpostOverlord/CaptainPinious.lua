--[[
	Script Name: Captain Pinious.lua
	Script Purpose: General Introduction
	Script Author: John Adams
	Script Date: 2008.09.06
	Script Notes: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, 492) and GetQuestStep(Spawn, 492) == 4 then
		AddConversationOption(conversation, "Have you met Charles Arker? He's a well-known fellow.", "CharlesArker")
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious001.mp3", "", "", 846615498, 3873495514, Spawn)
	AddConversationOption(conversation, "Teach me about interacting with people and objects around Norrath.", "TeachMeInteracting")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". So you're the new addition to the outpost that we've been hearing about. I've been stationed here by the Overlord to instruct you in ways that you can interact with the world around you.")
end

function TeachMeInteracting(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious002.mp3", "", "", 2903161190, 2453753160, Spawn)

	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "WaysToInteract")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "NPCInteract")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "ObjectInteract")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "Inventory")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are several types of individuals and items you can interact with. Among these are other player characters, non-player characters, objects in the world, and items in your inventory.")
end

function WaysToInteract(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious003.mp3", "", "", 3452718562, 2616705077, Spawn)

	AddConversationOption(conversation, "How can I tell which actions I can take?", "WhatActions")
	StartConversation(conversation, NPC, Spawn, "You can perform a number of actions by right-clicking on a nearby player that you see. You can invite them to a group, follow them, talk to them, inspect their equipment, trade with them, and other choices. Some actions can only be taken while you're in a group with them.")
end

function WhatActions(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious004.mp3", "", "", 2909488415, 579153552, Spawn)

	AddConversationOption(conversation, "How do I talk to other players?", "TalkToPlayers")
	StartConversation(conversation, NPC, Spawn, "If one of the right-click choices is grey, it means it's unavailable. You either need to be closer to the other player or be grouped with them.")
end

function TalkToPlayers(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious005.mp3", "", "", 1528548512, 277398920, Spawn)

	AddConversationOption(conversation, "How do I interact with non-player characters?", "NPCInteract")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "ObjectInteract")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "Inventory")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "If you're near another player, you can type something on the command line of your Chat window and press enter. All other nearby players can see this text. To send a private message, right-click on the character and select the 'tell' option, or hit the T key and type their name.")
end

function NPCInteract(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious006.mp3", "", "", 662332133, 1635440695, Spawn)
	AddConversationOption(conversation, "How do I tell the difference?", "TellTheDifference")
	StartConversation(conversation, NPC, Spawn, "There are a variety of non-player characters (NPCs) around Norrath. Some of them are there to talk to or buy from, while others are meant to fight.")
end

function TellTheDifference(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious007.mp3", "", "", 3296094991, 894278121, Spawn)
	AddConversationOption(conversation, "Are there different ways to interact with a single NPC?", "SingleNPC")
	StartConversation(conversation, NPC, Spawn, "The shape of your mouse pointer when you move it over an NPC indicates the primary means of interaction. If the pointer becomes a speech bubble, you can talk to that NPC. If it becomes crossed swords, you can attack them. If it looks like a stack of coins, that's a merchant.")
end

function SingleNPC(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious008.mp3", "", "", 394706450, 3452025444, Spawn)
	AddConversationOption(conversation, "How do I talk to other players?", "TalkToNPCs")
	AddConversationOption(conversation, "DEV: THIS QUESTION SEEMS WRONG? Should be Talk To NPC based on next sequence.")
	StartConversation(conversation, NPC, Spawn, "You can see all the ways you can interact with an NPC by right-clicking on it. If an option is grey, you probably need to be closer to it.")
end

function TalkToNPCs(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious009.mp3", "", "", 3974625037, 2019991574, Spawn)
	AddConversationOption(conversation, "How do I go about attacking an NPC?", "AttackNPC")
	StartConversation(conversation, NPC, Spawn, "Well, you're talking to me, so you know at least one way! You can either right-click and select 'hail', click on them if that's their default action, or target them and hit the H key.")
end

function AttackNPC(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious010.mp3", "", "", 454006131, 3919416269, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "WaysToInteract")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "ObjectInteract")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "Inventory")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To learn about combat, talk to Trainer Darg Frostwind near the western archway. To learn about evaluating your opponents, talk to Trainer Anna Winston, who is near Darg. Both these trainers provide information vital to your success as an adventurer.")
end

function ObjectInteract(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious011.mp3", "", "", 3997858624, 220413119, Spawn)
	AddConversationOption(conversation, "How do I tell what the glowing object will do?", "GlowingObjects")
	StartConversation(conversation, NPC, Spawn, "If something glows when you move your mouse over it, you can interact with it. It might be a door or gate that takes you to another location, a book you see on a table, a chest you can loot, or another type of object. Some items glow only if you're on a quest to find them.")
end

function GlowingObjects(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious012.mp3", "", "", 157757148, 1267818422, Spawn)
	AddConversationOption(conversation, "Can anything bad happen by clicking on an object?", "VeryBadThings")
	StartConversation(conversation, NPC, Spawn, "Sometimes you'll receive information on what the object will do when you hold your mouse over it. Other times you will need to right-click on the object to see what action you can perform with it.")
end

function VeryBadThings(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious013.mp3", "", "", 2171077809, 1456782467, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "WaysToInteract")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "NPCInteract")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "ObjectInteract")
	AddConversationOption(conversation, "What can I do with items in my inventory?", "Inventory")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Be careful about clicking on an object when you don't know what it will do, as something unexpected might happen. You might draw the attention of someone who didn't want you to touch it, or might end up somewhere you didn't plan to be.")
end

function Inventory(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious014.mp3", "", "", 3800117344, 3288637503, Spawn)
	AddConversationOption(conversation, "How do I know what I can do with an item?", "Item")
	StartConversation(conversation, NPC, Spawn, "Sometimes you'll receive items in your inventory, such as when you complete a quest or loot a chest from a fallen opponent. Other times, you'll receive an item by clicking on a glowing object you see in the world, or that is given to you by another player.")
end

function Item(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious015.mp3", "", "", 1253051107, 1099351530, Spawn)
	AddConversationOption(conversation, "What are some common things I can do with items?", "CommonThings")
	StartConversation(conversation, NPC, Spawn, "Open your inventory with the I key, or open up all bags you are carrying by pressing the B key. You can bring up a menu of choices for what you can do with an item by right-clicking on it. Double-clicking the left mouse button on something in your inventory will try to do that item's default action.")
end

function CommonThings(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious016.mp3", "", "", 3814807765, 2564531807, Spawn)
	AddConversationOption(conversation, "What about other types of items?", "TypesOfItems")
	StartConversation(conversation, NPC, Spawn, "If the item is a piece of armor or a weapon, you can equip it. If it's a book or note, you can read it. If it's food or drink, you can consume it. Some items, such as furniture, can be placed while you're inside your house or apartment.")
end

function TypesOfItems(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious017.mp3", "", "", 1882449239, 3035449116, Spawn)
	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "WaysToInteract")
	AddConversationOption(conversation, "How do I interact with non-player characters?", "NPCInteract")
	AddConversationOption(conversation, "How can I interact with objects in the world?", "ObjectInteract")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Some items in your inventory can give you quests or provide other benefits. Right-click on items in your inventory and select the 'Examine' option to learn more about any item you're carrying.")
end

function CharlesArker(NPC, Spawn)
	SetStepComplete(Spawn, 492, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_pinious/tutorial_island02_evil_revamp/trainers/world_interaction/capt_pinious018.mp3", "", "", 1766847422, 3271708837, Spawn)
	AddConversationOption(conversation, "Thanks anyway, Captain.")
	StartConversation(conversation, NPC, Spawn, "I've met many great heroes of the Overlord since arriving at the outpost, but I can't recall anyone by that name.")
end
