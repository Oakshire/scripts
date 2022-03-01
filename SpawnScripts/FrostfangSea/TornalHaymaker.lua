--[[
	Script Name		:	SpawnScripts/FrostfangSea/TornalHaymaker.lua
	Script Purpose	:	bruiser trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local BRUISER = 7

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == BRUISER then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a another bruiser?", "BruisChat1")
		AddConversationOption(conversation, "It does, doesn't it? Good bye.")
		StartConversation(conversation, NPC, Spawn, "You need not tell me that you are a fellow. bruiser.  Your intimidating presence made that clear, my friend.")
	else
		PlayFlavor(NPC, "", "Idle chat is useless.  If you are not here to train, then leave.", "hello", 0, 0, Spawn)
	end
end

function BruisChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "BruisChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your strength or stamina, be sure to get them!  Strength increases the amount of damage your attacks can inflict on others and raises your ability to carry heavy weight.  Your stamina affects your health.  This is crucial.")
end

function BruisChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's good to know.", "BruisChat3")
	StartConversation(conversation, NPC, Spawn, "But first and foremost, you should know the power that flows through you.  We focus our minds and bodies through sheer force of will in order to withstand attacks and reduce the amount of damage inflicted upon us.")
end

function BruisChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "BruisChat4")
	StartConversation(conversation, NPC, Spawn, "But our discipline offers a great deal more than just defense.  We are masters of physical combat!  We have transformed our bodies into vicious weapons to inflict pain and suffering upon any who dare to oppose us!  This allows us to often hold a foe's attention, giving our allies a chance to attack it, too.")
end

function BruisChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "BruisChat5")
	StartConversation(conversation, NPC, Spawn, "And although we excel at hand to hand combat, some bruisers wield staves or hammers.  Such weapons are simply an extension of yourself and can be equally effective at inflicting damage or deflecting an attacker's blade.")
end

function BruisChat5(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself as best you can in leather, " .. GetName(Spawn) .. ".  An encumbering suit of armor would only get in your way while you brutalize your foes with your relentless attacks.")
end