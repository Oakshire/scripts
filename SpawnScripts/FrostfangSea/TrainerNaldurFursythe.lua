--[[
	Script Name	: SpawnScripts/FrostfangSea/TrainerNaldurFursythe.lua
	Script Purpose	: Trainer Naldur Fursythe <Expert in Physical Attributes>
	Script Author	: theFoof
	Script Date	: 2013.05.21
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1062.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "what_chat_1")
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Hello there. You look like you keep both your body and mind in good shape. Even so, I bet you could use more information on your physical attributes: Strength, Agility, Stamina, Intelligence, and Wisdom. That's what I'm here to teach you!")
end

function what_chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Agility.", "what_chat_2")
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Strength determines how much weight you can carry. The more Strength the fighter has, the more physical damage they can do in melee combat. Strength also determines the maximum amount of power Guardians, Berserkers, Bruisers, Monks, Paladins and Shadowknights have.")
end

function what_chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Stamina.", "what_chat_3")
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Agility helps you avoid physical attacks. The more Agility you have, the higher your Avoidance ability. Agility also determines the maximum amount of power Brigands, Swashbucklers, Assassins, Rangers, Troubadors and Dirges have and the damage they can inflict.")
end

function what_chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Intelligence.", "what_chat_4")
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Stamina gives you more Health points. The more Health you have, the longer you can survive in battle. Stamina is a useful attribute for every class.")
end 

function what_chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about Wisdom.", "dlg_43_5")
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Intelligence is more than just a sign of how smart you are. The more Intelligence you have, the more damage mages do with spells in combat. Intelligence also determines the maximum amount of power Wizards, Warlocks, Coercers, Illusionists, Necromancers, Conjurers, Troubadors and Dirges have.")
end

function what_chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1", "view_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Wisdom increases your resistances to magical types of attacks: Heat, Cold, Disease, Poison, Magic, Mental and Divine. Wisdom also determines the maximum amount of power Inquisitors, Templars, Defilers, Mystics, Furies and Wardens have and the damage they can inflict.")
end

function view_chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "what_chat_1")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "impr_chat_1")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character, in your character window. Just press the C key to open your character window.")
end

function impr_chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are there other ways?", "impr_chat_2")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Your physical attributes, as well as other aspects of your character, can be improved in a number of ways. Many items add points to your attributes, resistances, Health, or Power. Hold your mouse pointer over your items to see what benefits they provide.")
end

function impr_chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "what_chat_1")
	AddConversationOption(conversation, "How do I view my physical attributes?", "view_chat_1")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Many spells and combat arts enhance your attributes. Some of these can be cast on yourself, while others can improve other player characters that you group with. Grouping with other classes provides a wider variety of ways to improve your attributes.")
end