--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerRafelaKosimo.lua
	Script Purpose	: Trainer Rafela Kosimo <Expert in Physical Attributes>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela001.mp3", "", "", 369190615, 678098833, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "dlg_56_1")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". You look like you keep both your body and mind in good shape. Even so, I bet you could use more information on your physical attributes: Strength, Agility, Stamina, Intelligence, and Wisdom. That's what I'm here to teach you!")
end

function dlg_56_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela002.mp3", "", "", 269298887, 2860978242, Spawn)
	AddConversationOption(conversation, "Tell me about Agility.", "dlg_56_2")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Strength determines how much weight you can carry. The more Strength you have, the more physical damage you can do in melee combat. Strength also determines the maximum amount of power Guardians, Berserkers, Monks, and Paladins have.")
end

function dlg_56_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela003.mp3", "", "", 618428185, 2242815487, Spawn)
	AddConversationOption(conversation, "Tell me about Stamina.", "dlg_56_3")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Agility helps you avoid physical attacks. The more Agility you have, the higher your Avoidance ability. Agility also determines the maximum amount of power Swashbucklers, Rangers, Troubadors, and Dirges have.")
end

function dlg_56_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela004.mp3", "", "", 3361827642, 1990974736, Spawn)
	AddConversationOption(conversation, "Tell me about Intelligence.", "dlg_56_4")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Stamina gives you more Health points. The more Health you have, the longer you can survive in battle. Stamina is a useful attribute for every class.")
end

function dlg_56_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela005.mp3", "", "", 1693600094, 3506813775, Spawn)
	AddConversationOption(conversation, "Tell me about Wisdom.", "dlg_56_5")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Intelligence is more than just a sign of how smart you are. The more Intelligence you have, the more damage you do with spells in combat. Intelligence also determines the maximum amount of power Wizards, Warlocks, Illusionists, Conjurors, Troubadors, and Dirges have.")
end

function dlg_56_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela006.mp3", "", "", 2596932055, 833533845, Spawn)
	AddConversationOption(conversation, "How do I view my physical attributes?", "dlg_56_6")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Wisdom increases your resistances to magical types of attacks: Heat, Cold, Disease, Poison, Magic, Mental and Divine. Wisdom also determines the maximum amount of power Templars, Mystics, Furies, Wardens, and Paladins have.")
end

function dlg_56_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela007.mp3", "", "", 3801545950, 4239189434, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "dlg_56_7")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character, in your persona window. Just press the P key to open your persona window.")
end

function dlg_56_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela002.mp3", "", "", 269298887, 2860978242, Spawn)
	AddConversationOption(conversation, "Tell me about Agility.", "dlg_56_8")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Strength determines how much weight you can carry. The more Strength you have, the more physical damage you can do in melee combat. Strength also determines the maximum amount of power Guardians, Berserkers, Monks, and Paladins have.")
end

function dlg_56_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela007.mp3", "", "", 3801545950, 4239189434, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_56_9")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character, in your persona window. Just press the P key to open your persona window.")
end

function dlg_56_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela008.mp3", "", "", 2282437179, 3119891904, Spawn)
	AddConversationOption(conversation, "Are there other ways?")
	AddConversationOption(conversation, "Thank you for the information.", "dlg_56_10")
	StartConversation(conversation, NPC, Spawn, "Your physical attributes, as well as other aspects of your character, can be improved in a number of ways. Many items add points to your attributes, resistances, Health, or Power. Hold your mouse pointer over your items to see what benefits they provide.")
end

function dlg_56_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela009.mp3", "", "", 1243763931, 281213796, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "dlg_56_11")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Many spells and combat arts enhance your attributes. Some of these can be cast on yourself, while others can improve other player characters that you group with. Grouping with other classes provides a wider variety of ways to improve your attributes.")
end

function dlg_56_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela007.mp3", "", "", 3801545950, 4239189434, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_56_12")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character, in your persona window. Just press the P key to open your persona window.")
end

function dlg_56_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela002.mp3", "", "", 269298887, 2860978242, Spawn)
	AddConversationOption(conversation, "Tell me about Agility.", "dlg_56_13")
	AddConversationOption(conversation, "How do I view my physical attributes?")
	AddConversationOption(conversation, "How do I improve my physical attributes?")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Strength determines how much weight you can carry. The more Strength you have, the more physical damage you can do in melee combat. Strength also determines the maximum amount of power Guardians, Berserkers, Monks, and Paladins have.")
end

function dlg_56_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_rafela_kosimo/_exp03/exp03_cty_kelethin/tutorials/qst_rafela/qst_rafela007.mp3", "", "", 3801545950, 4239189434, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "dlg_56_14")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character, in your persona window. Just press the P key to open your persona window.")
end

