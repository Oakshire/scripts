--[[
	Script Name		:	SpawnScripts/FrostfangSea/GlippitGreenmuck.lua
	Script Purpose	:	warden trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local WARDEN = 16

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == WARDEN then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a fellow warden?", "WardChat1")
		AddConversationOption(conversation, "Thank you, but I must be going.")
		StartConversation(conversation, NPC, Spawn, "Another warden of the forest stands before me.  Welcome!")
	else
		PlayFlavor(NPC, "", "Watch the flippers, please. Thanks.", "hello", 0, 0, Spawn)
	end
end

function WardChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "WardChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your wisdom or stamina, then take them!  Wisdom increases the amount of damage your spells can inflict on others and raises your defenses against spell damage inflicted on you. Your stamina affects your health.  This is crucial.")
end

function WardChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "WardChat3")
	StartConversation(conversation, NPC, Spawn, "The druidic powers we wield can be used to help mend the wounded or purse the disease and poison from our allies, which is a true blessing in any battle!")
end

function WardChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That will be useful!", "WardChat4")
	StartConversation(conversation, NPC, Spawn, "Although we skillfully exert the regenerative and defensive aspects of nature, we must also recognize that they are effective in inflicting damage upon our foes.  This cannot be avoided, nor should it be.")
end

function WardChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself as best you can in leather, " .. GetName(Spawn) .. ". With the powers of nature protecting you, you need not be encumbered by heavy suits of armor.")
end