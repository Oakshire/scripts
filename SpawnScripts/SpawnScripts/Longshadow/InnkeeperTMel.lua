--[[
	Script Name	: SpawnScripts/Longshadow/InnkeeperTMel.lua
	Script Purpose	: Innkeeper T`Mel <Housing>
	Script Author	: John Adams
	Script Date	: 2008.09.29
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

	PlayFlavor(NPC, "innkeep_t_mel/fprt_hood05/innkeeper010.mp3", "", "", 2340348153, 751626447, Spawn)
	AddConversationOption(conversation, "Please.", "dlg_9_1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello .. GetName(Spawn) .. . I am the Innkeeper for this district. We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeep_t_mel/fprt_hood05/innkeeper001.mp3", "", "", 1604544073, 412984361, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_9_2")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper002.mp3", "", "", 2240470987, 2600508927, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_9_3")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the ‘place’ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper003.mp3", "", "", 3084973441, 655607663, Spawn)
	AddConversationOption(conversation, "Is any other housing available?", "dlg_9_4")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Freeport.  In reward for your services, the Overlord has awarded you a one bedroom house for free at this time.")
end

function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper004.mp3", "", "", 3828782678, 3247840746, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_9_5")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, the grand city of Freeport has houses ranging from the basic one bedroom model on up to 5 bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
end

function dlg_9_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper002.mp3", "", "", 2240470987, 2600508927, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_9_6")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the ‘place’ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_9_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper005.mp3", "", "", 3482692093, 3042315270, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_9_7")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_9_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper006.mp3", "", "", 2103390575, 2406130630, Spawn)
	AddConversationOption(conversation, "I can sell things through a broker?", "dlg_9_8")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Selling through your market board works the same way as directly selling through a broker, it just allows you to do it from the comfort of your home.")
end

function dlg_9_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_9_9")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes.  For a fee, brokers are willing to post the goods you are willing to sell to other adventurers.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_9_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper005.mp3", "", "", 3482692093, 3042315270, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_9_10")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_9_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper007.mp3", "", "", 3903539507, 2186966695, Spawn)
	AddConversationOption(conversation, "Anything else?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_9_11")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_9_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood05/innkeeper008.mp3", "", "", 3708157773, 1757079976, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_9_12")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, houses have what we call vaults; these are extra storage within your house, the larger your house is, the more storage space available.  By placing items in this house vault and using your marketboard, you can sell these items to other citizens of Freeport without being in your room.")
end