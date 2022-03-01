--[[
	Script Name	: SpawnScripts/Nettleville/InnkeeperBailyDowden.lua
	Script Purpose	: Innkeeper Baily Dowden <Housing>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village01/innkeeper001.mp3", "", "", 3113863761, 2642679335, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_26_1")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_26_7")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_26_2")
	AddConversationOption(conversation, "What is my house for?", "dlg_26_4")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there " .. GetName(Spawn) .. ", what can I help you with?")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_26_7")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_26_2")
	AddConversationOption(conversation, "What is my house for?", "dlg_26_4")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the ‘place’ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_26_3")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_26_7")
	AddConversationOption(conversation, "What is my house for?", "dlg_26_4")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Qeynos.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_26_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of housing is available to me?","dlg_26_7")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_26_2")
	AddConversationOption(conversation, "What is my house for?", "dlg_26_4")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the ‘place’ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_26_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Anything else?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_26_1")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_26_7")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_26_2")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_26_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Is any other housing available?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_26_1")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_26_2")
	AddConversationOption(conversation, "What is my house for?", "dlg_26_4")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Qeynos.  As a show of appreciation, Antonia Bayle has awarded you a one bedroom house for free at this time.")
end