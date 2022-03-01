--[[
	Script Name		:	SpawnScripts/FrostfangSea/LedvinAxethrower.lua
	Script Purpose	:	mystic trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local MYSTIC = 19

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == MYSTIC then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice can you give to another mystic?", "MysticChat1")
		AddConversationOption(conversation, "It is, isn't it?  Good day.")
		StartConversation(conversation, NPC, Spawn, "Hail, fellow mystic, my sibling in the shaman arts!  How nice to see another called into the fold.")
	else
		PlayFlavor(NPC, "", "Many paths may lead toward the same goal.", "hello", 0, 0, Spawn)
	end
end

function MysticChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "MysticChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your wisdom or stamina, then take them!  Wisdom increases the amount of damage your spells can inflict on others and raises your defenses against spell damage inflicted on you. Your stamina affects your health.  This is crucial.")
end

function MysticChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "MysticChat3")
	StartConversation(conversation, NPC, Spawn, "Know the power you wield.  We beseech our ancestors and seek their aid in all aspects of battle.  With their blessings we can cast protection or emporing spells upon ourselves and our allies.")
end

function MysticChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That will be useful!", "MysticChat4")
	StartConversation(conversation, NPC, Spawn, "But they can also empower us with the ability to inflict debilitating weakness upon the enemy!")
end

function MysticChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversatin, NPC, Spawn, "And protect yourself with a good set of chain mail, " .. GetName(Spawn) .. ".  The armor is not as cumbersome as plate, but its protective properties will be necessary when deep in battle.")
end