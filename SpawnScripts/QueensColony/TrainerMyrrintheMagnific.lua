--[[
    Script Name    : SpawnScripts/QueensColony/TrainerMyrrintheMagnific.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Myrrin the Magnific dialog
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good001.mp3", "", "", 1664457984, 1938404159, Spawn)
    AddConversationOption(conversation, "Let us begin.", "dlg_21_1")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "I am here to answer your questions on Spells and Combat Arts as well as other abilities. How can I help you?")
end

function dlg_21_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good002.mp3", "", "", 808130965, 1737550396, Spawn)
    AddConversationOption(conversation, "Tell me about Spells.", "dlg_21_2")
    AddConversationOption(conversation, "Tell me about Combat Arts.", "dlg_21_5")
    AddConversationOption(conversation, "Tell me about Abilities.", "dlg_21_8")
    AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?", "dlg_21_11")
    AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?", "dlg_21_14")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "I am here to answer your questions. How can I help you?")
end

function dlg_21_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good003.mp3", "", "", 3665238716, 2727251573, Spawn)
    AddConversationOption(conversation, "Who uses Spells?", "dlg_21_3")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "A Spell is a magical ability. Spells can have a variety of uses. Some allow you to damage an enemy, while others might provide benefits to yourself or an ally. You can hold your mouse pointer over a Spell's icon to see a description of what it does, or right-click on it and select 'Examine.'")
end

function dlg_21_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good004.mp3", "", "", 808721069, 3167840134, Spawn)
    AddConversationOption(conversation, "I have more questions.", "dlg_21_1")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Mages, priests, paladins, shadowknights, troubadors, and dirges all cast Spells. Each class has a list of Spells that is unique. While other classes may have similar Spells, no one has capabilities exactly like that of another class. Also, certain magical items may be imbued with Spell effects that can be cast or that activate on their own.")
end

function dlg_21_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good005.mp3", "", "", 3516119767, 3186961937, Spawn)
    AddConversationOption(conversation, "Who uses Combat Arts?", "dlg_21_6")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Combat Arts are a lot like Spells, but they usually take less time to cast and cannot be interrupted. As their name implies, many Combat Arts focus on some aspect of battle.")
end

function dlg_21_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good006.mp3", "", "", 4152547953, 4144844763, Spawn)
    AddConversationOption(conversation, "I have more questions.", "dlg_21_1")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "All fighters and scouts use Combat Arts. Each of these classes has unique Combat Arts that help distinguish them from other classes. Combat Arts have names and effects that fit the class that uses them.")
end

function dlg_21_8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good007.mp3", "", "", 4041785353, 3148613558, Spawn)
    AddConversationOption(conversation, "How are Abilities different from Spells and Combat Arts?", "dlg_21_9")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Abilities are general things your character can do, along with certain capabilities specific to your race. Some of your Abilities are extremely useful, such as Sprint, which allows you to run very fast for a short period of time. You can also Call for Help when you are in danger, or launch a Ranged Attack if you have a ranged weapon and ammo.")
end

function dlg_21_9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good008.mp3", "", "", 4015978134, 2213340213, Spawn)
    AddConversationOption(conversation, "I have more questions.", "dlg_21_1")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Unlike Spells and Combat Arts, Abilities cannot be upgraded. Most of your Abilities are received when you first begin your adventures in Norrath, although certain new ones can be granted as you become more experienced.")
end

function dlg_21_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good009.mp3", "", "", 3669707140, 1805788377, Spawn)
    AddConversationOption(conversation, "How do I use my Spells, Combat Arts, and Abilities?", "dlg_21_12")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "All your Spells and Combat Arts, as well as other Abilities, are found in your Knowledge Book. Press the K key to open it at any time, and click the name of the tab you wish to view: Abilities, Spells, or Combat Arts.")
end

function dlg_21_12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good010.mp3", "", "", 214302336, 1560132109, Spawn)
    AddConversationOption(conversation, "I have more questions.", "dlg_21_1")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "To use a Spell, Combat Art, or Ability, drag its icon from your Knowledge Book onto your hotbar. Some have already been placed there for you. To use one, simply click its icon on your hotbar or press the key assigned to it. You can open additional hotbars by right-clicking on a hotbar and selecting 'Open New Hotbar.'")
end

function dlg_21_14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good011.mp3", "", "", 2343506137, 3325799537, Spawn)
    AddConversationOption(conversation, "How can I judge the effectiveness of my Spells and Combat Arts?", "dlg_21_15")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels from 1 to 50 and will automatically be scribed in your Knowledge Book. Certain special Spells or Combat Arts can be obtained by doing quests. Once you are level 51 and higher, you must find ways to purchase or obtain your new Spells and Combat Arts.")
end

function dlg_21_15(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good012.mp3", "", "", 2215632312, 3289511413, Spawn)
    AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "dlg_21_16")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "There are three main ranks of Spells and Combat Arts: Apprentice, Adept, and Master. Within each rank are up to four tiers of quality. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice I rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function dlg_21_16(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good013.mp3", "", "", 3424361190, 3770163771, Spawn)
    AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "dlg_21_17")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "You can buy Apprentice II versions of your first six levels of Spells or Combat Arts here in the tower. Just purchase them from the appropriate merchant. When you arrive in Qeynos, you will find a Class Trainer that sells Apprentice II versions of your Spells or Combat Arts.")
end

function dlg_21_17(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good017.mp3", "", "", 983281181, 2794508480, Spawn)
    AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "dlg_21_18")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells and arts as you defeat opponents in battle. Many enemies will carry Adept I versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master I versions.")
end

function dlg_21_18(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good014.mp3", "", "", 3599821078, 422980237, Spawn)
    AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "dlg_21_19")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Apprentice IV quality spells, as well as valuable Adept III scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function dlg_21_19(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good015.mp3", "", "", 3513594939, 2556536854, Spawn)
    AddConversationOption(conversation, "How can I keep all these Spells and Arts straight in my Knowledge Book?", "dlg_21_20")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many new abilities as well as more effective versions of Spells or Combat Arts you have already learned. The names and icons of these upgrades are often similar, but the newer versions are more effective. Again, you will want to obtain the highest rank of these new abilities.")
end

function dlg_21_20(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_myrrin_the_magnific/tutorial_island02_revamp/trainers/spells_arts_abilities/spells_arts_good016.mp3", "", "", 1747363815, 678736548, Spawn)
    AddConversationOption(conversation, "I have more questions.", "dlg_21_1")
    AddConversationOption(conversation, "I will return for further instruction later.")
    StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities you wish to use.")
end