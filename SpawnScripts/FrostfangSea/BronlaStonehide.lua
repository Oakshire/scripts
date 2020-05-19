--[[
	Script Name		:	SpawnScripts/FrostfangSea/BronlaStonehide.lua
	Script Purpose	:	fury trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local FURY = 17

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == FURY then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for another fury?", "FuryChat1")
		AddConversationOption(conversation, "Thank you, but I must be going.")
		StartConversation(conversation, NPC, Spawn, "Lo, and behold, another druid stands before me.  Welcome, fellow fury of the storm!")
	else
		PlayFlavor(NPC, "", "Fresh dreams to you!", "hello", 0, 0, Spawn)
	end
end

function FuryChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "FuryChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your wisdom or stamina, then take them!  Wisdom increases the amount of damage your spells can inflict on others and raises your defenses against spell damage inflicted on you. Your stamina affects your health.  This is crucial.")
end

function FuryChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "FuryChat3")
	StartConversation(conversation, NPC, Spawn, "The primal forces of nature we wield can be used to help mend the wounded, which is beneficial in any battle!  They can also be used to enhance the physical attributes and mystical might of our allies, making the attacks of our party members even more fearsome.")
end

function FuryChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "I agree, that will be useful.", "FuryChat4")
	StartConversation(conversation, NPC, Spawn, "Although we skillfully exert the healing and bolstering aspects of nature, we do not want to ignore their effectiveness in inflicting destruction!  Lightning and fire can be quite effective in cutting down a formidable foe!")
end

function FuryChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself as best you can in leather, " .. GetName(Spawn) .. ". With such aggressive powers of nature at your hands, you need not waste any energy on encumbering suits of armor.")
end