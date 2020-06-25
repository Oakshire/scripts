--[[
	Script Name	: SpawnScripts/OutpostOverlord/TrainerNoggDreadscar.lua
	Script Purpose	: Trainer Nogg Dreadscar <Expert in Physical Attributes>
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_nogg_dreadscar/tutorial_island02_evil_revamp/trainers/attributes/nogg_dreadscar001.mp3", "", "", 1345962966, 10192429, Spawn)

	if HasQuest(Spawn, 492) and GetQuestStep(Spawn, 492) == 1 then
		AddConversationOption(conversation, "What do you know about Charles Arker?", "dlg_36_1")
	end

	AddConversationOption(conversation, "Tell me what my physical attributes do.", "PhysicalAttributes")
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Well met, " .. GetName(Spawn) .. ". The Overlord demands that his subjects maintain a healthy body and a keen mind. He has charged me with training new recruits about your physical attributes: Strength, Agility, Stamina, Intelligence, and Wisdom.")
end

function PhysicalAttributes(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me about Agility", "AgilityAttribute")
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Strength determines how much weight you can carry. The more Strength you have, the more physical damage you can do in melee combat. Strength also determines the maximum amount of power Guardians, Berserkers, Monks and Paladins have.")
end

function ShowAttributes(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "PhysicalAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "You can see your physical attributes, as well as other important aspects of your character in your persona window. Just press the P key to open your persona window.")
end

function ImproveAttributes(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Are there other ways?", "OtherWays")
AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Your physical attributes, as well as other aspects of your character, can be improved in a number of ways. Many items add points to your attributes, resistances, Health or Power. Hold your mouse pointer over your items to see what benefits they provide.")
end

function OtherWays(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me what my physical attributes do.", "PhysicalAttributes")
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "I will ask you about this later.")
	StartConversation(conversation, NPC, Spawn, "Many spells and combat arts enhance your attributes. Some of these can be cast on yourself, while others can improve other player characters that you group with. Grouping with other classes provides a wider variety of ways to improve your attributes.")
end

function AgilityAttribute(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me about Stamina", "StaminaAttribute")
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Agility helps you avoid physical attacks. The more Agility you have, the higher your Avoidance ability. Agility also determines the maximum amount of power Swashbucklers, Rangers, Troubadors, and Dirges have.")
end

function StaminaAttribute(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me about Intelligence", "IntelligenceAttribute")
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Stamina gives you more Health points. The more Health you have, the longer you can survive in battle. Stamina is a useful attribute for every class.")
end

function IntelligenceAttribute(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Tell me about Wisdom", "WisdomAttribute")
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Intelligence is more than just a sign of how smart you are. The more Intelligence you have, the more damage you do with spells in combat. Intelligence also determines the maximum amount of power Wizards, Warlocks, Illusionists, Conjurors, Troubadors, and Dirges have.")
end

function WisdomAttribute(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How do I view my physical attributes?.", "ShowAttributes")
	AddConversationOption(conversation, "How do I improve my physical attributes?", "ImproveAttributes")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Wisdom increases your resistances to magical types of attacks: Heat, Cold, Disease, Poison, Magic, Mental and Divine. Wisdom also determines the maximum amount of power Templars, Mystics, Furies, Wardens, and Paladins have.")
end


function dlg_36_1(NPC, Spawn)
	SetStepComplete(Spawn, 492, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks for letting me know.", "dlg_36_2")
	StartConversation(conversation, NPC, Spawn, "Charles Barker? Larker? Jarker? Nope, never heard of him.")
end

