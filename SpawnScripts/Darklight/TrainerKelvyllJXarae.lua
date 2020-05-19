--[[
	Script Name	: SpawnScripts/Darklight/TrainerKelvyllJXarae.lua
	Script Purpose	: Trainer Kelvyll J'Xarae <Know Your Inventory and Equipment>
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about items and equipment.", "dlg_14_1")
	AddConversationOption(conversation, "Tell me about my inventory.")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Well met. I'm here to teach our newest recruits about equipment and inventory space. Good equipment is one of the most important tools of any adventurer!")
	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me about items and equipment.", "dlg_15_1")
		AddConversationOption(conversation, "Tell me about my inventory.")
		AddConversationOption(conversation, "I will return for instruction later.")
		StartConversation(conversation, NPC, Spawn, "Well met. I'm here to teach our newest recruits about equipment and inventory space. Good equipment is one of the most important tools of any adventurer!")
	end

end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Can I put bags inside of bags?")
	AddConversationOption(conversation, "I will return for instruction later.", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Press the I key to open your inventory. Beneath your portrait are six slots that can hold items. You can place bags or other containers in those slots, which will give you even more storage space. Press the B key to open all your bags at once.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So one item takes up one bag slot?", "dlg_14_3")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Only empty bags can go inside other bags. For this reason, it's a good idea to get hold of containers with many slots. After a long night of adventuring or harvesting, you'll want to have as many places to store your goodies as possible.")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back if I need to refresh my memory on this.", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Certain items, such as ammunition or harvested resources, can be stacked up to 200 at a time, depending on the item. Many goods, such as armor and clothing, cannot be stacked at all.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What can I do with the treasures I earn while adventuring?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Norrath is full of treasures for brave heroes like you. Sometimes the opponents you defeat in battle leave behind treasure chests with valuable loot. You can also buy items from other players, craft them as an artisan, or be awarded items for completing quests.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does the item information tell me?", "dlg_15_3")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Some items you obtain can be equipped on your person. If you find weapons, armor, jewelry, or certain other goodies, you may be able to use them. To look at a piece of equipment and determine if you can use it, move your mouse pointer over the item.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are things like attribute bonuses important?", "dlg_15_4")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "For items that can be equipped, such as weapons and armor, mousing over it tells you which professions can use the item and at what level it can be equipped. You'll also see any benefits, such as attribute bonuses and resists, that the equipment provides.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I tell which of two weapons is better?", "dlg_15_5")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "A wise adventurer is always trying to improve his or her equipment. Whenever you see gear that provides an overall greater benefit than what you have, that item is an upgrade for you.")
end

function dlg_15_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I tell which of two pieces of armor is better?", "dlg_15_6")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Weapons have a Damage Rating that shows the relative damage you can do with them. A higher Damage Rating is always better. Be sure you are comparing weapons of the same type, such as a two-handed weapon with another two-hander, or one dual-wield weapon with another.")
end

function dlg_15_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What about scouts and priests?", "dlg_15_7")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "How you judge armor depends on your profession. Fighters who take a beating care most about obtaining armor that has high Mitigation, which decreases the amount of damage they take. Mages, on the other hand, know they can't take much punishment anyway, so would rather have armor that provides nice attribute bonuses.")
end

function dlg_15_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do I do with equipment I can't use?", "dlg_15_8")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Scouts and priests need varying amounts of protection depending on how they play. If they find themselves at the forefront of battle, protection becomes very important. If they stay out of harms way, attribute bonuses may be more valuable.")
end

function dlg_15_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why are some items marked 'No Value' or 'No Trade'?", "dlg_15_9")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "An item can be sold to a non-player merchant for cash unless it has the 'No Value' flag on it. Items can be sold or traded to another player unless it has the 'No Trade' flag. If an item says it is 'Lore,' you can only have one of them on your character at a time.")
end

function dlg_15_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What does it mean when an item says it is 'Attuneable'?", "dlg_15_10")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Some items are marked 'No Value' because they are easy to obtain, such as harvested goods. You have to work to earn wealth, Zuzoo! Items are marked 'No Trade' in order to ensure that you earn them yourself, such as defeating a very tough monster or completing a long quest.")
end

function dlg_15_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I manage my inventory?", "dlg_15_11")
	StartConversation(conversation, NPC, Spawn, "If an item is marked 'Attuneable,' you must attune it to yourself before it provides any benefits. You'll notice a message on screen when you are wearing an item that must be attuned. To attune it, right-click on the item and select 'Attune.'  Once attuned, that item can no longer be traded or sold to another player.")
end

function dlg_15_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Can I put bags inside of bags?", "dlg_15_12")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Press the I key to open your inventory. Beneath your portrait are six slots that can hold items. You can place bags or other containers in those slots, which will give you even more storage space. Press the B key to open all your bags at once.")
end

function dlg_15_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So one item takes up one bag slot?", "dlg_15_13")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Only empty bags can go inside other bags. For this reason, it's a good idea to get hold of containers with many slots. After a long night of adventuring or harvesting, you'll want to have as many places to store your goodies as possible.")
end

function dlg_15_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back if I need to refresh my memory on this.", "dlg_15_14")
	StartConversation(conversation, NPC, Spawn, "Certain items, such as ammunition or harvested resources, can be stacked up to 200 at a time, depending on the item. Many goods, such as armor and clothing, cannot be stacked at all.")
end

