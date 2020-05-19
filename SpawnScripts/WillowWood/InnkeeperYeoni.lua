--[[
	Script Name	: SpawnScripts/WillowWood/InnkeeperYeoni.lua
	Script Purpose	: Innkeeper Yeoni <Housing>
	Script Author	: Scatman
	Script Date	: 2009.09.15
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

	PlayFlavor(NPC, "innkeeper_yeoni/qey_village05/innkeeper010.mp3", "", "", 57172292, 1639146546, Spawn)
	--if not HasQuest(Spawn, HOUSE_QUEST) then
		AddConversationOption(conversation, "Please.", "OfferQuest1")
	--end
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ". I am the Innkeeper for this village.  We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end

function OfferQuest1(NPC, Spawn)
end

-- this stuff below goes in the accepted function of the quest

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_yeoni/qey_village05/innkeeper001.mp3", "", "", 1416750242, 2121491884, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_2")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper002.mp3", "", "", 268560119, 3945464773, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you have done so, right-click on the item and select the 'place' option.  You will then see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper003.mp3", "", "", 3111940277, 3258032438, Spawn)
	AddConversationOption(conversation, "Is any other housing available?", "dlg_16_4")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_5")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Qeynos.  As a show of appreciation, Antonia Bayle has awarded you a one bedroom house for free at this time.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper004.mp3", "", "", 4113019813, 3549581191, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_5")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, the lovely city of Qeynos has houses ranging from the basic one bedroom model on up to 5 bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper002.mp3", "", "", 268560119, 3945464773, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you have done so, right-click on the item and select the 'place' option.  You will then see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_16_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper005.mp3", "", "", 1836231230, 3620786214, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?", "dlg_16_7")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_5")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items. What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Qeynos.  These items can be purchased by your fellow citizens at a Broker. Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_16_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper006.mp3", "", "", 1981599373, 3630852821, Spawn)
	AddConversationOption(conversation, "I can sell things through a broker?", "dlg_16_8")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_5")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That?s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Selling through your market board works the same way as directly selling through a broker, it just allows you to do it from the comfort of your home.")
end

function dlg_16_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_9")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes.  For a fee, brokers are willing to post the goods you are willing to sell to other adventurers.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_16_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper002.mp3", "", "", 268560119, 3945464773, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "What is my house for?", "dlg_16_10")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you have done so, right-click on the item and select the 'place' option.  You will then see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_16_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper007.mp3", "", "", 1009203650, 2953491252, Spawn)
	AddConversationOption(conversation, "Anything else?", "dlg_16_11")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_9")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_16_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village05/innkeeper008.mp3", "", "", 3178827795, 3719693769, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_16_9")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_16_3")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_16_6")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, houses have what we call vaults, which are extra storage within your house. The larger your house is, the more storage space it has available. By placing items in this house vault and using your marketboard, you can sell these items to other citizens of Qeynos without being in your room.")
end

