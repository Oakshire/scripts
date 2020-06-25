--[[
	Script Name		:	SpawnScripts/FrostfangSea/TovaGillbride.lua
	Script Purpose	:	wizard trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local WIZARD = 23

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == WIZARD then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you have any advice for a fellow wizard?", "WizChat1")
		AddConversationOption(conversation, "It is, isn't it? Good day.")
		StartConversation(conversation, NPC, Spawn, "Good day to you, fellow student of wizardry.  It's amazing to see how many of us have talents for the arcane.")
	else
		PlayFlavor(NPC, "", "Hmm! Hmm! Hmm!", "hello", 0, 0, Spawn)
	end
end

function WizChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "WizChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your intelligence or stamina, then take them!  Intelligence affects your spell focus and increases the damage your spells can cause.  Your stamina affects your health.  This is crucial!")
end

function WizChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's interesting.", "WizChat3")
	StartConversation(conversation, NPC, Spawn, "Know your strengths and hone them!  We can unleash the purest forms of destruction upon our foes by harnessing the arcane powers of fire and ice.  This is true whether you are battling a single opponent or a group.")
end

function WizChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Rely not on your defenses.  You are stronger than that!  There is no need to concern yourself with defenses when your foe has been slain by the devastating elements!")
end