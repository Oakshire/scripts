--[[
	Script Name	: SpawnScripts/GreaterFaydark/InnkeeperTwiggy.lua
	Script Purpose	: Innkeeper Twiggy <Housing>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/merchants/innkeeper_twiggy_hail_5d858d10.mp3", "I think I'll treat myself to a pruning.", "", 147248694, 3994611630, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/merchants/innkeeper_twiggy_hail_c9120666.mp3", "All this running around is likely to whittle me away to nothing!", "", 2824894623, 967344056, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy001.mp3", "", "", 493093901, 1676315046, Spawn)
	AddConversationOption(conversation, "Please.", "dlg_85_1")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Hello, .. GetName(Spawn) .. . I am the Innkeeper for Kelethin.  My name is Twiggy!  We received word of your arrival and have a room prepared for you.  Is there anything you'd like to know about housing before you move in?")
	if convo==86 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy010.mp3", "", "", 232672131, 2109387803, Spawn)
		AddConversationOption(conversation, "How can I place an item in my house?", "dlg_86_1")
		AddConversationOption(conversation, "What kind of housing is available to me?")
		AddConversationOption(conversation, "What is the marketboard for?")
		AddConversationOption(conversation, "What is my house for?")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again, .. GetName(Spawn) .. . What can I help you with?")
	end

end

function dlg_85_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy002.mp3", "", "", 1017061939, 1561607192, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_85_2")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_85_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy003.mp3", "", "", 943030445, 831464053, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_85_3")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you've done so, right-click on the item and select the 'place' option.  Then you'll see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_85_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy004.mp3", "", "", 2005553615, 4066801615, Spawn)
	AddConversationOption(conversation, "Is any other housing available?", "dlg_85_4")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "There are a few different types of housing available in Kelethin.  This particular tree is very comfortable and cozy, though you might later prefer to reside in one of those modern rental acorns.")
end

function dlg_85_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy005.mp3", "", "", 2629356152, 4258694039, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_85_5")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, Kelethin has houses ranging from the basic one bedroom model on up to four bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
end

function dlg_85_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy003.mp3", "", "", 943030445, 831464053, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_85_6")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house, you must first find the item in your inventory. Once you've done so, right-click on the item and select the 'place' option.  Then you'll see a tinted outline of your item in your house. When the item is highlighted green you can place it in that location. If it is highlighted red, you cannot.")
end

function dlg_85_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy004.mp3", "", "", 2005553615, 4066801615, Spawn)
	AddConversationOption(conversation, "Is any other housing available?", "dlg_85_7")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "There are a few different types of housing available in Kelethin.  This particular tree is very comfortable and cozy, though you might later prefer to reside in one of those modern rental acorns.")
end

function dlg_85_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy006.mp3", "", "", 3891426709, 2870580979, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_85_8")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items. What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Kelethin.  These items can be purchased by your fellow citizens at a Broker.  Our Broker is based out of the Kelethin First Regional Bank.")
end

function dlg_85_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy007.mp3", "", "", 3004508275, 2782950123, Spawn)
	AddConversationOption(conversation, "I can sell things through a broker?", "dlg_85_9")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Selling through your market board works the same way as directly selling through a broker, it just allows you to do it from the comfort of your home.")
end

function dlg_85_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_85_10")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes.  For a fee, brokers are willing to post the goods you are willing to sell to other adventurers.  We have our very own broker here within Kelethin, too!")
end

function dlg_86_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy008.mp3", "", "", 572451551, 3490877103, Spawn)
	AddConversationOption(conversation, "Anything else?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_86_2")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_86_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy009.mp3", "", "", 277136482, 2220542103, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_86_3")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, houses have what we call vaults, which are extra storage within your house. The larger your house is, the more storage space is available. By placing items in this house vault and using your marketboard, you can sell these items to others without being in your room.")
end

function dlg_86_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy004.mp3", "", "", 2005553615, 4066801615, Spawn)
	AddConversationOption(conversation, "Is any other housing available?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_86_4")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "There are a few different types of housing available in Kelethin.  This particular tree is very comfortable and cozy, though you might later prefer to reside in one of those modern rental acorns.")
end

function dlg_86_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/quest/qst_twiggy/qst_twiggy005.mp3", "", "", 2629356152, 4258694039, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_86_5")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, Kelethin has houses ranging from the basic one bedroom model on up to four bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/merchants/innkeeper_twiggy_hail_5d858d10.mp3", "I think I'll treat myself to a pruning.", "", 147248694, 3994611630, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/innkeeper_twiggy/_exp03/exp03_cty_kelethin/merchants/innkeeper_twiggy_hail_c9120666.mp3", "All this running around is likely to whittle me away to nothing!", "", 2824894623, 967344056, Spawn)
--]]

