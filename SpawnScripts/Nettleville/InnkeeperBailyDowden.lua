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
    if GetQuestStep(Spawn,5586)==1 then
	AddConversationOption(conversation, "I have a letter for you.  Shanda says its from the boss, but I don't know who that is.", "Delivered")
    end
    AddConversationOption(conversation, "I have questions about houses.", "Housing")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "So, your bank is overflowing, is it?  Sure, I'd be happy to take any excess coin off your hands.")
	PlayFlavor(NPC, "", "", "hello", 3113863761, 2642679335, Spawn)
end


function Housing(NPC, Spawn)

    if GetQuestStep(Spawn,5586)==1 then
	AddConversationOption(conversation, "I've got a letter for you from Shanda.  She wanted to make sure you got it right away.", "Delivered")
    end
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_26_1")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_26_7")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_26_2")
	AddConversationOption(conversation, "What is my house for?", "dlg_26_4")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
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

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Here's the letter, maybe I will have a look at your selection.")
	AddConversationOption(conversation, "Are you... the boss?","Boss")
    SetStepComplete(Spawn,5586,1)
	StartConversation(conversation, NPC, Spawn, "Maybe someday you will find out who the boss is, but that day isn't today.  Please hand over the letter and spend some of your coin on my wares.")
end

function Boss(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, I guess.")
    QuestStepIsComplete(Spawn,5586,1)
	StartConversation(conversation, NPC, Spawn, "Boss? Me?  Heavens no!  I try to keep my hands clean as it is of these sort of dealings.  You just delivered a letter 'from' the boss.  You best keep your nose clean if you know what's good for you.")
end
