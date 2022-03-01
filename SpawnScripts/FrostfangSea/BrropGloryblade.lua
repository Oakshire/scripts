--[[
	Script Name		:	SpawnScripts/FrostfangSea/BrropGloryblade.lua
	Script Purpose	:	templar trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local TEMPLAR = 13

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == TEMPLAR then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for another templar?", "TempChat1")
		AddConversationOption(conversation, "That I am!  But I have no time to chat.")
		StartConversation(conversation, NPC, Spawn, "Ah, another defender of the faith.  Welcome, my fellow templar!")
	else
		PlayFlavor(NPC, "", "Greetings!", "hello", 0, 0, Spawn)
	end
end

function TempChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "TempChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your wisdom or stamina, then take them!  Wisdom increases the amount of damage your spells can inflict on others and raises your defenses against spell damage inflicted on you. Your stamina affects your health.  This is crucial.")
end

function TempChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "TempChat3")
	StartConversation(conversation, NPC, Spawn, "We are known for protecting ourselves and our allies with reactive heals.  These are spells cast on an individual that lay in wait until they have damage inflicted upon them.  At which point the spell responds and a heal is given to the individual.")
end

function TempChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That will be useful!", "TempChat4")
	StartConversation(conversation, NPC, Spawn, "But the divine power that we are blessed with is not limited to mending the wounded or curing the suffering of the afflicted.  It can also help to defend against attack or be wielded offensively, to smite our enemies!")
end

function TempChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself with a good set of plate mail, " .. GetName(Spawn) .. ". The armor may be cumbersome, but its protective properties will be necessary, as it takes time to beseech our divine powers.")
end