--[[
	Script Name	: SpawnScripts/QueensColony/TrainerGurgaTrueheart.lua
	Script Purpose	: Trainer Gurga Trueheart <Expert in Physical Attributes>
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Modified Date   : 2020.04.03
	Modified by     : premierio015
	Notes           : Added animations
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart001.mp3", "", "beckon", 330223646, 1165391404, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "dlg_14_1")
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". You look like you keep both your body and mind in good shape. Even so, I bet you could use more information on your physical attributes: Strength, Agility, Stamina, Intelligence, and Wisdom. That's what I'm here to teach you!")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart002.mp3", "", "flex", 3017268324, 3420396892, Spawn)
	AddConversationOption(conversation, "Tell me about Agility.", "dlg_14_2")
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Strength determines how much weight you can carry. The more Strength you have, the more physical damage you can do in melee combat. Strength also determines the maximum amount of power Guardians, Berserkers, Monks, and Paladins have.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart003.mp3", "", "", 1800198432, 422621617, Spawn)
	AddConversationOption(conversation, "Tell me about Stamina.", "dlg_14_3")
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Agility helps you avoid physical attacks. The more Agility you have, the higher your Avoidance ability. Agility also determines the maximum amount of power Swashbucklers, Rangers, Troubadors, and Dirges have.")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart004.mp3", "", "", 824633632, 4280308507, Spawn)
	AddConversationOption(conversation, "Tell me about Intelligence.", "dlg_14_4")
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Stamina gives you more Health points. The more Health you have, the longer you can survive in battle. Stamina is a useful attribute for every class.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart005.mp3", "", "ponder", 634969391, 333054011, Spawn)
	AddConversationOption(conversation, "Tell me about Wisdom.", "dlg_14_5")
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Intelligence is more than just a sign of how smart you are. The more Intelligence you have, the more damage you do with spells in combat. Intelligence also determines the maximum amount of power Wizards, Warlocks, Illusionists, Conjurors, Troubadors, and Dirges have.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart006.mp3", "", "", 172104333, 2804988196, Spawn)
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Wisdom increases your resistances to magical types of attacks: Heat, Cold, Disease, Poison, Magic, Mental and Divine. Wisdom also determines the maximum amount of power Templars, Mystics, Furies, Wardens, and Paladins have.")
end

function dlg_14_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart007.mp3", "", "", 3977540961, 2552439869, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "dlg_14_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_14_7")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character, in your persona window. Just press the P key to open your persona window.")
end

function dlg_14_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart008.mp3", "", "nod", 3884845357, 2691699677, Spawn)
	AddConversationOption(conversation, "Are there other ways?", "dlg_14_8")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Your physical attributes, as well as other aspects of your character, can be improved in a number of ways. Many items add points to your attributes, resistances, Health, or Power. Hold your mouse pointer over your items to see what benefits they provide.")
end

function dlg_14_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        AnimationSpiral(NPC)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_gurga_trueheart/tutorial_island02_revamp/trainers/attributes/gurga_trueheart009.mp3", "", "", 1275102729, 1764856299, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "dlg_14_1")
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_14_6")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Many spells and combat arts enhance your attributes. Some of these can be cast on yourself, while others can improve other player characters that you group with. Grouping with other classes provides a wider variety of ways to improve your attributes.")
end

function AnimationSpiral(NPC)
        PlayAnimation(NPC, 2250)
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1015.mp3", "", "", 0, 0)
--]]
