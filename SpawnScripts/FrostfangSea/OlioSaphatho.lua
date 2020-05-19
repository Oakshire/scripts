--[[
	Script Name		:	SpawnScripts/FrostfangSea/OlioSaphatho.lua
	Script Purpose	:	coercer trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local COERCER = 27

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == COERCER then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you have any advice for a fellow coercer?", "CoecChat1")
		AddConversationOption(conversation, "It certainly is! Good day.")
		StartConversation(conversation, NPC, Spawn, "I see you have chosen the path of a coercer.  It is a challenging path, for sure.")
	else
		PlayFlavor(NPC, "", "Bending the will of your opponent means lending their strength to your own.", "hello", 0, 0, Spawn)
	end
end

function CoecChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "CoecChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your intelligence or stamina, then take them!  Intelligence affects your spell focus and increases the damage your spells can cause.  Your stamina affects your health.  This is crucial!")
end

function CoecChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's interesting.", "CoecChat3")
	StartConversation(conversation, NPC, Spawn, "Do not underestimate your ability to dominate the minds of your foes, charming them to carry out your will.  There is no need to conjure a pet, when you can force the enemy to fight amongst themselves!")
end

function CoecChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "But do not rely solely on your charmed slaves.  You must also hone your offensive and defensive spells!  You can inflict magical and mental damage upon your targets through spells, while defending yourself by mesmerizing or stunning them.")
end