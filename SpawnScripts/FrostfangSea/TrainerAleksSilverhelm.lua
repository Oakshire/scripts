--[[
	Script Name	: SpawnScripts/FrostfangSea/TrainerAleksSilverhelm.lua
	Script Purpose	: Trainer Aleks Silverhelm <Keeper of Magical and Martial Knowledge>
	Script Author	: theFoof
	Script Date	: 2013.5.18
	Script Notes	: 
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
    first_chat(NPC, Spawn)
end

function first_chat(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1010.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "Let us begin.", "dlg_7_1")
	    AddConversationOption(conversation, "I will return later.")
	    StartConversation(conversation, NPC, Spawn, "I am here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them.")
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1010.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Let us begin.", "dlg_7_1")
		AddConversationOption(conversation, "I will return later.")
		StartConversation(conversation, NPC, Spawn, "I am here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them.")
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1010.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Let us begin.", "dlg_7_1")
		AddConversationOption(conversation, "I will return later.")
		StartConversation(conversation, NPC, Spawn, "I am here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them.")
	end
end
function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Spells.", "dlg_7_2")
	AddConversationOption(conversation, "Tell me about Combat Arts.", "dlg_7_5")
	AddConversationOption(conversation, "Tell me about Abilities.", "dlg_7_8")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?", "dlg_7_11")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?", "dlg_7_14")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. What can I help you with?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who uses Spells?", "dlg_7_3")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "A Spell is a magical ability, and spells have a variety of uses. Some allow you to damage an enemy, while others might provide benefits to yourself or an ally. You can hold your mouse pointer over a Spell's icon to see a description of what it does, or right-click on it and select 'Examine.'")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_7_4")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Mages, priests, paladins, shadowknights, troubadors, and dirges all cast Spells. Each class has a list of Spells that's unique. While other classes may have similar Spells, no one has capabilities exactly like that of another class. Also, certain magical items may be imbued with Spell effects that can be cast or that activate on their own.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who uses Combat Arts?")
	AddConversationOption(conversation, "I will return for instruction later.", "dlg_7_6")
	StartConversation(conversation, NPC, Spawn, "Combat Arts are a lot like Spells, but they usually take less time to cast and cannot be interrupted. As their name implies, many Combat Arts focus on some aspect of battle.")
end

function dlg_7_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_7_1")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All fighters and scouts use Combat Arts. Each of these classes has unique Combat Arts that help distinguish them from other classes. Combat Arts have names and effects that fit the class that uses them.")
end

function dlg_7_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How are Abilities different from Spells and Combat Arts?", "dlg_7_9")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Abilities are general things your character can do, along with certain capabilities specific to your race. Some of your Abilities are extremely useful, such as Sprint, which allows you to run very fast for a short period of time. You can also Call for Help when you're in danger, or launch a Ranged Attack if you have a ranged weapon and, of course, ammo.")
end

function dlg_7_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_7_1")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Unlike Spells and Combat Arts, Abilities cannot be upgraded. Most of your Abilities are received when you first begin your adventures in Norrath, although certain new ones can be granted as you become more experienced.")
end

function dlg_7_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I use my Spells, Combat Arts, and Abilities?", "dlg_7_12")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All your Spells and Combat Arts, as well as other Abilities, are found in your Knowledge Book. Press the K key to open it at any time, and click the name of the tab you wish to view: Abilities, Spells, or Combat Arts.")
end

function dlg_7_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_7_1")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To use a Spell, Combat Art, or Ability, drag its icon from your Knowledge Book onto your hotbar. Some have already been placed there for you. To use one, simply click its icon on your hotbar or press the key assigned to it. You can open additional hotbars by right-clicking on a hotbar and selecting 'Open New Hotbar.'")
end

function dlg_7_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I judge the effectiveness of my Spells and Combat Arts?", "dlg_7_15")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels and will be automatically scribed in your Knowledge Book. Certain special Spells or Combat Arts can be obtained by doing quests.")
end

function dlg_7_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "dlg_7_16")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are six ranks of Spells and Combat Arts: Apprentice, Journeyman, Adept, Expert, Master and Grandmaster. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function dlg_7_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "dlg_7_17")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "Spells gained through quests or racial abilities are usually at their highest level and cannot be upgraded.  Grandmaster spells are only available from your class training choices every ten levels starting at 14.  You can see the choices by selecting the L key on your keyboard. ")
end

function dlg_7_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "dlg_7_18")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells and arts as you defeat opponents in battle. Many enemies will carry Adept versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master versions.")
end

function dlg_7_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "dlg_7_19")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Journeyman quality spells, as well as valuable Expert scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function dlg_7_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I keep all these Spells and Arts straight in my Knowledge Book?", "dlg_7_20")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many completely new abilities as well as more effective versions of Spells or Combat Arts you have already learned.  The background colors of the spell icon tell you its type.  Beneficial spells have a yellow, orange or purple color, while attack spells have a red, green or blue color.   ")
end

function dlg_7_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have more questions.", "dlg_7_1")
	AddConversationOption(conversation, "I will return for further instruction later.")
	StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your individual, personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities that you wish to use.")
end

