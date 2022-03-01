--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerValtteriYliveri.lua
	Script Purpose	: Trainer Valtteri Yliveri <Keeper of Magical and Martial Knowledge>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri001.mp3", "", "", 936350332, 90364249, Spawn)
	AddConversationOption(conversation, "Let us begin.", "dlg_55_1")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer! On behalf of Queen Amree of the Fae, I'm here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them. It is my pleasure to share my vast knowledge with you!")
end

function dlg_55_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri002.mp3", "", "", 2453379956, 3310442892, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_55_2")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_55_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri003.mp3", "", "", 19488271, 366896859, Spawn)
	AddConversationOption(conversation, "Who uses Spells?", "dlg_55_3")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "A Spell is a magical ability, and spells have a variety of uses. Some allow you to damage an enemy, while others might provide benefits to yourself or an ally. You can hold your mouse pointer over a Spell's icon to see a description of what it does, or right-click on it and select 'Examine.'")
end

function dlg_55_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri004.mp3", "", "", 2334805237, 1906671194, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_55_4")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Mages, priests, paladins, shadowknights, troubadors, and dirges all cast Spells. Each class has a list of Spells that's unique. While other classes may have similar Spells, no one has capabilities exactly like that of another class. Also, certain magical items may be imbued with Spell effects that can be cast or that activate on their own.")
end

function dlg_55_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri002.mp3", "", "", 2453379956, 3310442892, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_55_5")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_55_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri005.mp3", "", "", 3424416600, 3943456320, Spawn)
	AddConversationOption(conversation, "Who uses Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.", "dlg_55_6")
	StartConversation(conversation, NPC, Spawn, "Combat Arts are a lot like Spells, but they usually take less time to cast and cannot be interrupted. As their name implies, many Combat Arts focus on some aspect of battle.")
end

function dlg_55_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri006.mp3", "", "", 1083934086, 2427192984, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_55_7")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All fighters and scouts use Combat Arts. Each of these classes has unique Combat Arts that help distinguish them from other classes. Combat Arts have names and effects that fit the class that uses them.")
end

function dlg_55_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri002.mp3", "", "", 2453379956, 3310442892, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_55_8")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_55_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri007.mp3", "", "", 2389866686, 2371365661, Spawn)
	AddConversationOption(conversation, "How are Abilities different from Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Abilities are general things your character can do, along with certain capabilities specific to your race. Some of your Abilities are extremely useful, such as Sprint, which allows you to run very fast for a short period of time. You can also Call for Help when you're in danger, or launch a Ranged Attack if you have a ranged weapon and, of course, ammo.")
end

function dlg_55_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri008.mp3", "", "", 2279765563, 3684024592, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_55_10")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Unlike Spells and Combat Arts, Abilities cannot be upgraded. Most of your Abilities are received when you first begin your adventures in Norrath, although certain new ones can be granted as you become more experienced.")
end

function dlg_55_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri002.mp3", "", "", 2453379956, 3310442892, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_55_11")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_55_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri009.mp3", "", "", 1987652975, 3025156912, Spawn)
	AddConversationOption(conversation, "How do I use my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All your Spells and Combat Arts, as well as other Abilities, are found in your Knowledge Book. Press the K key to open it at any time, and click the name of the tab you wish to view: Abilities, Spells, or Combat Arts.")
end

function dlg_55_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri010.mp3", "", "", 1721125392, 1598552634, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_55_13")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To use a Spell, Combat Art, or Ability, drag its icon from your Knowledge Book onto your hotbar. Some have already been placed there for you. To use one, simply click its icon on your hotbar or press the key assigned to it. You can open additional hotbars by right-clicking on a hotbar and selecting 'Open New Hotbar.'")
end

function dlg_55_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri002.mp3", "", "", 2453379956, 3310442892, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_55_14")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_55_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri011.mp3", "", "", 2108757362, 940715089, Spawn)
	AddConversationOption(conversation, "How can I judge the effectiveness of my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels from 1 to 50 and will be automatically scribed in your Knowledge Book. Certain special Spells or Combat Arts can be obtained by doing quests. Once you are level 51 and higher, you must find new ways to purchase or obtain your new Spells and Combat Arts.")
end

function dlg_55_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri012.mp3", "", "", 2145626237, 3819170760, Spawn)
	AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "dlg_55_16")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are three main ranks of Spells and Combat Arts: Apprentice, Adept, and Master. Within each rank are up to four tiers of quality. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice I rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function dlg_55_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri013.mp3", "", "", 272235720, 2321960215, Spawn)
	AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "dlg_55_17")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You can buy Apprentice II versions of your first six levels of Spells or Combat Arts. You just purchase them from the appropriate merchant. When you go back up into Kelethin, you will find a Class Trainer that sells Apprentice II versions of your Spells or Combat Arts.")
end

function dlg_55_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri017.mp3", "", "", 1752657986, 2894689158, Spawn)
	AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "dlg_55_18")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells and arts as you defeat opponents in battle. Many enemies will carry Adept I versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master I versions.")
end

function dlg_55_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri014.mp3", "", "", 986284660, 3435757183, Spawn)
	AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "dlg_55_19")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Apprentice IV quality spells, as well as valuable Adept III scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function dlg_55_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri015.mp3", "", "", 1198165250, 2103504074, Spawn)
	AddConversationOption(conversation, "How can I keep all these Spells and Arts straight in my Knowledge Book?", "dlg_55_20")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many completely new abilities as well as more effective versions of Spells or Combat Arts you have already learned. The names and icons of these upgrades are often quite similar, but the newer versions are more effective. Again, you will want to obtain the highest rank of these new abilities that you can.")
end

function dlg_55_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri016.mp3", "", "", 2671971735, 2047415775, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_55_21")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your individual, personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities that you wish to use.")
end

function dlg_55_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_valtteri_yliveri/_exp03/exp03_cty_kelethin/tutorials/qst_valtteri/qst_valtteri002.mp3", "", "", 2453379956, 3310442892, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_55_22")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

