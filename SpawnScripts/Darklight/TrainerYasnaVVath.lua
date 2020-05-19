--[[
	Script Name	: SpawnScripts/Darklight/TrainerYasnaVVath.lua
	Script Purpose	: Trainer Yasna V'Vath <Keeper of Magical and Martial Knowledge>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Let us begin.", "dlg_4_1")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "I am here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Let us begin.", "dlg_9_1")
		AddConversationOption(conversation, "I will return later.")
		StartConversation(conversation, NPC, Spawn, "I am here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them.")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_4_2")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who uses Spells?", "dlg_4_3")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "A Spell is a magical ability, and spells have a variety of uses. Some allow you to damage an enemy, while others might provide benefits to yourself or an ally. You can hold your mouse pointer over a Spell's icon to see a description of what it does, or right-click on it and select 'Examine.'")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_4_4")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Mages, priests, paladins, shadowknights, troubadors, and dirges all cast Spells. Each class has a list of Spells that's unique. While other classes may have similar Spells, no one has capabilities exactly like that of another class. Also, certain magical items may be imbued with Spell effects that can be cast or that activate on their own.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_4_5")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who uses Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.", "dlg_4_6")
	StartConversation(conversation, NPC, Spawn, "Combat Arts are a lot like Spells, but they usually take less time to cast and cannot be interrupted. As their name implies, many Combat Arts focus on some aspect of battle.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_4_7")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All fighters and scouts use Combat Arts. Each of these classes has unique Combat Arts that help distinguish them from other classes. Combat Arts have names and effects that fit the class that uses them.")
end

function dlg_4_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_4_8")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_4_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How are Abilities different from Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Abilities are general things your character can do, along with certain capabilities specific to your race. Some of your Abilities are extremely useful, such as Sprint, which allows you to run very fast for a short period of time. You can also Call for Help when you're in danger, or launch a Ranged Attack if you have a ranged weapon and, of course, ammo.")
end

function dlg_4_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_4_10")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Unlike Spells and Combat Arts, Abilities cannot be upgraded. Most of your Abilities are received when you first begin your adventures in Norrath, although certain new ones can be granted as you become more experienced.")
end

function dlg_4_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_4_11")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_4_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I use my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All your Spells and Combat Arts, as well as other Abilities, are found in your Knowledge Book. Press the K key to open it at any time, and click the name of the tab you wish to view: Abilities, Spells, or Combat Arts.")
end

function dlg_4_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_4_13")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To use a Spell, Combat Art, or Ability, drag its icon from your Knowledge Book onto your hotbar. Some have already been placed there for you. To use one, simply click its icon on your hotbar or press the key assigned to it. You can open additional hotbars by right-clicking on a hotbar and selecting 'Open New Hotbar.'")
end

function dlg_4_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_4_14")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_4_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I judge the effectiveness of my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels from 1 to 50 and will be automatically scribed in your Knowledge Book. Certain special Spells or Combat Arts can be obtained by doing quests. Once you are level 51 and higher, you must find new ways to purchase or obtain your new Spells and Combat Arts.")
end

function dlg_4_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "dlg_4_16")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are three main ranks of Spells and Combat Arts: Apprentice, Adept, and Master. Within each rank are up to four tiers of quality. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice I rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function dlg_4_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "dlg_4_17")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You can buy Apprentice II versions of your Spells or Combat Arts. You just purchase them from the appropriate merchant.")
end

function dlg_4_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "dlg_4_18")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells and arts as you defeat opponents in battle. Many enemies will carry Adept I versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master I versions.")
end

function dlg_4_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "dlg_4_19")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Apprentice IV quality spells, as well as valuable Adept III scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function dlg_4_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I keep all these Spells and Arts straight in my Knowledge Book?", "dlg_4_20")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many completely new abilities as well as more effective versions of Spells or Combat Arts you have already learned. The names and icons of these upgrades are often quite similar, but the newer versions are more effective. Again, you will want to obtain the highest rank of these new abilities that you can.")
end

function dlg_4_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_4_21")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your individual, personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities that you wish to use.")
end

function dlg_4_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_4_22")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_2")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who uses Spells?", "dlg_9_3")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "A Spell is a magical ability, and spells have a variety of uses. Some allow you to damage an enemy, while others might provide benefits to yourself or an ally. You can hold your mouse pointer over a Spell's icon to see a description of what it does, or right-click on it and select 'Examine.'")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_9_4")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Mages, priests, paladins, shadowknights, troubadors, and dirges all cast Spells. Each class has a list of Spells that's unique. While other classes may have similar Spells, no one has capabilities exactly like that of another class. Also, certain magical items may be imbued with Spell effects that can be cast or that activate on their own.")
end

function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_5")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who uses Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.", "dlg_9_6")
	StartConversation(conversation, NPC, Spawn, "Combat Arts are a lot like Spells, but they usually take less time to cast and cannot be interrupted. As their name implies, many Combat Arts focus on some aspect of battle.")
end

function dlg_9_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_9_7")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All fighters and scouts use Combat Arts. Each of these classes has unique Combat Arts that help distinguish them from other classes. Combat Arts have names and effects that fit the class that uses them.")
end

function dlg_9_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_8")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How are Abilities different from Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Abilities are general things your character can do, along with certain capabilities specific to your race. Some of your Abilities are extremely useful, such as Sprint, which allows you to run very fast for a short period of time. You can also Call for Help when you're in danger, or launch a Ranged Attack if you have a ranged weapon and, of course, ammo.")
end

function dlg_9_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_9_10")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Unlike Spells and Combat Arts, Abilities cannot be upgraded. Most of your Abilities are received when you first begin your adventures in Norrath, although certain new ones can be granted as you become more experienced.")
end

function dlg_9_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_11")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I use my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All your Spells and Combat Arts, as well as other Abilities, are found in your Knowledge Book. Press the K key to open it at any time, and click the name of the tab you wish to view: Abilities, Spells, or Combat Arts.")
end

function dlg_9_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_9_13")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To use a Spell, Combat Art, or Ability, drag its icon from your Knowledge Book onto your hotbar. Some have already been placed there for you. To use one, simply click its icon on your hotbar or press the key assigned to it. You can open additional hotbars by right-clicking on a hotbar and selecting 'Open New Hotbar.'")
end

function dlg_9_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_14")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I judge the effectiveness of my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels from 1 to 50 and will be automatically scribed in your Knowledge Book. Certain special Spells or Combat Arts can be obtained by doing quests. Once you are level 51 and higher, you must find new ways to purchase or obtain your new Spells and Combat Arts.")
end

function dlg_9_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "dlg_9_16")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are three main ranks of Spells and Combat Arts: Apprentice, Adept, and Master. Within each rank are up to four tiers of quality. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice I rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function dlg_9_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "dlg_9_17")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You can buy Apprentice II versions of your Spells or Combat Arts. You just purchase them from the appropriate merchant.")
end

function dlg_9_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "dlg_9_18")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells and arts as you defeat opponents in battle. Many enemies will carry Adept I versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master I versions.")
end

function dlg_9_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "dlg_9_19")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Apprentice IV quality spells, as well as valuable Adept III scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function dlg_9_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I keep all these Spells and Arts straight in my Knowledge Book?", "dlg_9_20")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many completely new abilities as well as more effective versions of Spells or Combat Arts you have already learned. The names and icons of these upgrades are often quite similar, but the newer versions are more effective. Again, you will want to obtain the highest rank of these new abilities that you can.")
end

function dlg_9_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_9_21")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your individual, personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities that you wish to use.")
end

function dlg_9_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_22")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_9_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I judge the effectiveness of my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels from 1 to 50 and will be automatically scribed in your Knowledge Book. Certain special Spells or Combat Arts can be obtained by doing quests. Once you are level 51 and higher, you must find new ways to purchase or obtain your new Spells and Combat Arts.")
end

function dlg_9_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "dlg_9_24")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are three main ranks of Spells and Combat Arts: Apprentice, Adept, and Master. Within each rank are up to four tiers of quality. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice I rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function dlg_9_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "dlg_9_25")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You can buy Apprentice II versions of your Spells or Combat Arts. You just purchase them from the appropriate merchant.")
end

function dlg_9_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "dlg_9_26")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells and arts as you defeat opponents in battle. Many enemies will carry Adept I versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master I versions.")
end

function dlg_9_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "dlg_9_27")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Apprentice IV quality spells, as well as valuable Adept III scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function dlg_9_27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I keep all these Spells and Arts straight in my Knowledge Book?", "dlg_9_28")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many completely new abilities as well as more effective versions of Spells or Combat Arts you have already learned. The names and icons of these upgrades are often quite similar, but the newer versions are more effective. Again, you will want to obtain the highest rank of these new abilities that you can.")
end

function dlg_9_28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_9_29")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your individual, personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities that you wish to use.")
end

function dlg_9_29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_9_30")
	AddConversationOption(conversation, "Tell me about Combat Arts.")
	AddConversationOption(conversation, "Tell me about Abilities.")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

