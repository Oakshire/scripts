--[[
	Spawn Template
	Script Name: Trainer Sythor the All-Seeing.lua
	Script Purpose: Combat Arts, Spells, and Abilities training
	Script Author: John Adams
	Script Date: 2008.09.06
	Script Notes: Auto-Generated Conversation from PacketParser Data
--]]

local AquaticResearchNotebook = 488

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1,3)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_" .. choice .. "_1004.mp3", "", "", 0, 0, Spawn)

    if HasQuest(Spawn, AquaticResearchNotebook) then
        if GetQuestStep(Spawn, AquaticResearchNotebook) == 5 then
            FoundNotebook(NPC, Spawn)
        end
    end
	AddConversationOption(conversation, "Let us begin.", "Begin")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the service of the Overlord. Our great leader has sent me here to explain something very important: how your Spells, Combat Arts, and Abilities work, as well as how to improve them. Listen and learn from the mighty Sythor the All-Seeing!")
end

function Begin(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me about Spells.", "AboutSpells")
	AddConversationOption(conversation, "Tell me about Combat Arts.", "AboutCombatArts")
	AddConversationOption(conversation, "Tell me about Abilities.", "AboutAbilities")
	AddConversationOption(conversation, "Where do I find my Spells, Combat Arts, and Abilities?", "Find")
	AddConversationOption(conversation, "How do I obtain and improve my Spells and Combat Arts?", "Improve")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am here to share my vast knowledge. What can I help you with?")
end

function AboutSpells(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Who uses Spells?", "UsesSpells")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "A Spell is a magical ability. Spells can have a variety of uses. Some allow you to damage an enemy, while others might provide benefits to yourself or an ally. You can hold your mouse pointer over a Spell's icon to see a description of what it does, or right-click on it and select 'Examine.'")
end

function UsesSpells(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have more questions.", "Begin")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Mages, priests, paladins, shadowknights, troubadors, and dirges all cast Spells. Each class has a list of Spells that is unique. While other classes may have similar Spells, no one has capabilities exactly like that of another class. Also, certain magical items may be imbued with Spell effects that can be cast or that activate on their own.")
end

function AboutCombatArts(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Who uses Combat Arts?", "UsesCombatArts")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Combat Arts are a lot like Spells, but they usually take less time to cast and cannot be interrupted. As their name implies, many Combat Arts focus on some aspect of battle.")
end

function UsesCombatArts(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have more questions.", "Begin")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All fighters and scouts use Combat Arts. Each of these classes has unique Combat Arts that help distinguish them from other classes. Combat Arts have names and effects that fit the class that uses them.")
end

function AboutAbilities(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How are Abilities different from Spells and Combat Arts?", "Abilities")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Abilities are general things your character can do, along with certain capabilities specific to your race. Some of your Abilities are extremely useful, such as Sprint, which allows you to run very fast for a short period of time. You can also Call for Help when you are in danger, or launch a Ranged Attack if you have a ranged weapon and ammo.")
end


function Abilities(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have more questions.", "Begin")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Unlike Spells and Combat Arts, Abilities cannot be upgraded. Most of your Abilities are received when you first enter the world, although certain new ones can be granted as you become more experienced.")
end

function Find(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How do I use my Spells, Combat Arts, and Abilities?", "UseKnowledge")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "All your Spells and Combat Arts, as well as other Abilities, are found in your Knowledge Book. Press the K key to open it at any time, and click the name of the tab you wish to view: Abilities, Spells, or Combat Arts.")
end

function UseKnowledge(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have more questions.", "Begin")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "To use a Spell, Combat Art, or Ability, drag its icon from your Knowledge Book onto your hotbar. Some have already been placed there for you. To use one, simply click its icon on your hotbar or press the key assigned to it. You can open additional hotbars by right-clicking on a hotbar and selecting 'Open New Hotbar'.")
end

function Improve(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How can I judge the effectiveness of my spells and Combat Arts?", "Ranks")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Most of your Spells or Combat Arts are given to you as you advance in levels from 1 to 50. Certain special Spells or Combat Arts can be obtained by doing quests. Once you are level 51 and higher, you must find ways to purchase or obtain your new Spells and Combat Arts.")
end

function Ranks(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How can I improve my Spells and Combat Arts?", "Upgrades")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "There are three main ranks of Spells and Combat Arts: Apprentice, Adept, and Master. Within each rank are up to four tiers of quality. Spells and Combat Arts that are automatically granted to you are usually given at the Apprentice I rank. You should always try to have the highest rank of your Spells and Combat Arts, because they gain effectiveness as you improve them.")
end

function Upgrades(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "What about other ranks of Spells and Arts?", "OtherRanks")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "You can buy Apprentice II versions of spells or combat arts here in the tower. Just purchase them from the appropriate merchant. When you arrive in Freeport, you will find a Class Trainer that sells Apprentice II versions of your Spells or Combat Arts.")
end

function OtherRanks(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Are there other ways to improve my Spells and Combat Arts?", "OtherWaysToImprove")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "You will also find more potent ranks of spells as you defeat opponents in battle. Many enemies will carry Adept I versions of Spells and Combat Arts, while conquering some extremely powerful foes may result in the extremely rare Master I versions.")
end

function OtherWaysToImprove(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Are all my Spells and Combat Arts unique?", "Unique")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "In addition, certain crafters can make upgrades to your Spells and Combat Arts using harvested components. They can create Apprentice IV quality spells, as well as valuable Adept III scrolls using rare components. Buying from or trading with other players is an excellent way to upgrade your Spells and Combat Arts.")
end

function Unique(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How can I keep all these Spells and Arts stright in my Knowledge Book?", "SortKnowledge")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "As you advance in level, you will obtain many completely new abilities as well as more effective versions of Spells or Combat Arts you have already learned. The names and icons of these upgrades are often similar, but the newer versions are more effective. Again, you will want to obtain the highest rank of these new abilities that you can.")
end

function SortKnowledge(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have more questions.", "Begin")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Your Spells and Combat Arts can easily be organized according to your personal taste. Just open your Knowledge Book and click the 'Sort' button in the upper right corner. This allows you to organize your Spells and Arts for easy access to the abilities you wish to use.")
end

function FoundNotebook(NPC, Spawn)
    AddConversationOption(conversation, "I found this research notebook and completed the work described in it for you.  Apparently the person sent before me wasn't so lucky.", "FoundNotebook2")
end

function FoundNotebook2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    PlayFlavor(NPC, "trainer_sythor_the_all-seeing/tutorial_island02_evil_revamp/trainers/spells_arts_abilities/spells_arts017.mp3", "", "", 654103180, 563259402, Spawn)
    AddConversationOption(conversation, "Thanks.", "FoundNotebook3")
    StartConversation(conversation, NPC, Spawn, "I knew I shouldn't have sent such a tasty looking gnome into dangerous waters.  Ludz will be slightly missed...  Anyways, here is the reward I was going to give him, but I guess it's yours now.")
end

function FoundNotebook3(NPC, Spawn)
    SetStepComplete(Spawn, AquaticResearchNotebook, 5)
end