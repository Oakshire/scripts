--[[
	Script Name		:	SpawnScripts/FrostfangSea/JardaSilverstaff.lua
	Script Purpose	:	conjuror trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local CONJUROR = 29

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == CONJUROR then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you have any advice for a fellow conjuror?", "ConjChat1")
		AddConversationOption(conversation, "That's good to know.  Good day.")
		StartConversation(conversation, NPC, Spawn, "I see you have the talents of a conjurer, too.  It may be a challenging profession, but I have found it rather rewarding.")
	else
		PlayFlavor(NPC, "", "Greetings!", "hello", 0, 0, Spawn)
	end
end

function ConjChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "ConjChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your intelligence or stamina, then take them!  Intelligence affects your spell focus and increases the damage your spells can cause.  Your stamina affects your health.  This is crucial!")
end

function ConjChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's interesting.", "ConjChat3")
	StartConversation(conversation, NPC, Spawn, "We possess many potent abilities, considering that we can control the arcane powers of fire, but the greatest weapons in our arsenal are the powerful elemental minions summoned forth to do our bidding.")
end

function ConjChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "They are our best defense against the onslaught.  If they should fall take solace in the fact that they have returned to their plane of origin and can be summoned, once more.")
end