--[[
	Script Name		:	SpawnScripts/FrostfangSea/WolcottChillborn.lua
	Script Purpose	:	inquis trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local INQUISITOR = 14

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == INSQUISITOR then
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		conversation = CreateConversation()
		AddConversationOption(conversation, "What advice do you have for a fellow inquisitor?", "InqChat1")
		AddConversationOption(conversation, "That I did! But I have no time to chat about it.")
		StartConversation(conversation, NPC, Spawn, "Ah, another who has refused to ignore their convictions.  Welcome, my fellow inquisitor!")
	else
		PlayFlavor(NPC, "", "Tapping into divine power does not require giving yourself to a petty god. Tapping into that power merely requires proper training and understanding, just like any discipline.", "hello", 0, 0, Spawn)
	end
end

function InqChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That's useful to know!", "InqChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your wisdom or stamina, then take them!  Wisdom increases the amount of damage your spells can inflict on others and raises your defenses against spell damage inflicted on you. Your stamina affects your health.  This is crucial.")
end

function InqChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That's interesting.", "InqChat3")
	StartConversation(conversation, NPC, Spawn, "We are known for protecting ourselves and our allies with reactive heals.  These are spells cast on an individual that lay in wait until they have damage inflicted upon them. At which time the spell responds and a heal is given to the individual.")
end

function InqChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That will be useful!", "InqChat4")
	StartConversation(conversation, NPC, Spawn, "But the divine power, demanded by our fervent faith, is not limited to mending the wounded or purging ailments from the suffering.  It can also be called upon to increase the amount of damage your spells or your ally's spells will inflict upon our enemies.")
end

function InqChat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself with a good set of plate mail, " .. GetName(Spawn) .. ".  The armor may be cumbersome, but its protective properties will be necessary, as it takes time to call forth our divine powers.")
end