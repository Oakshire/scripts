--[[
	Script Name	: SpawnScripts/OutpostOverlord/TrainerArthurMerrin.lua
	Script Purpose	: Trainer Arthur Merrin <Skilled Artisan and Crafter>
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How does one take up crafting?", "dlg_11_1")
	AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Greetings, brave hero of the Overlord! It is my responsibility to explain how crafting and tradeskills can bring prosperity to the kingdom of Freeport. I hope I can encourage your participation in helping our city flourish. We can beat those hapless Qeynosians through our superior commerce!")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Where does one perform crafting?", "dlg_11_2")
	AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Crafting, or tradeskilling as some call it, involves taking ingredients harvested or obtained in the world, mixing them with the proper fuel, and carefully following a specific recipe to create something new and useful for yourself or your fellow citizens. Just as you can gain levels by adventuring, you have a separate Artisan level that increases as you earn experience crafting.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Can I make a variety of items?", "dlg_11_3")
	AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Crafting takes place in workshops, just like the one we have here on the island. Inside this doorway you will find the fuel and devices you'll need to build, cook, scribe, sew, and create all manner of useful goods. When you arrive in our grand city, you will find the entrances to workshops scattered throughout your home village.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What could I specialize in?", "dlg_11_4")
	AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "As you practice your craft you will learn to make a variety of products, but as you advance in your profession you will specialize in certain types of goods. As you acquire new recipe books, you will learn new types of items you can make.")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Where do I learn recipes?", "dlg_11_5")
	AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "You might choose to become a Provisioner that makes food and drink, a Woodworker that crafts totems and staves, an Armorer that forges plate and chain armor, a Sage that scribes potent spells for mages and priests, or one of many other noble professions.")
end

function dlg_11_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do with the items I make?", "dlg_11_6")
	AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Basic recipes can be bought for a small fee from a merchant near the workshops in Freeport. Rare recipes can be obtained by adventuring in the wilds of Norrath. You may want to trade goods or services with other adventurers and artisans to obtain such valuable recipes. You can view your recipe book by pressing the N key.  ")
end

function dlg_11_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Do you have any further advice?", "dlg_11_7")
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "You can either use the items yourself or make a tidy profit by selling them to others. A skilled artisan is always in demand for the goods they provide, so learn your craft well and you may build a fortune that others in Freeport can only envy!")
end

function dlg_11_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- give tradeskill item(s) here
	AddConversationOption(conversation, "Thank you for the guidance.", "dlg_11_8")
	StartConversation(conversation, NPC, Spawn, "Here is a handbook that will provide you with some basic reference material to start with. Once you reach Freeport, you will find a tradeskill tutor within your local crafting workshop who can teach you more about crafting in further detail.")
end

