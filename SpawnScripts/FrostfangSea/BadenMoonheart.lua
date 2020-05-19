--[[
	Script Name		:	SpawnScripts/FrostfangSea/BadenMoonheart.lua
	Script Purpose	:	monk trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local MONK = 6

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == MONK then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a another monk?", "MonkChat1")
		AddConversationOption(conversation, "It does, doesn't it? Good bye.")
		StartConversation(conversation, NPC, Spawn, "You need not tell me that you are a fellow. monk.  I can sense the aura of serenity that envelopes you, my friend.")
	else
		PlayFlavor(NPC, "", "May your path be clear, friend.", "hello", 0, 0, Spawn)
	end
end

function MonkChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "MonkChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your strength or stamina, be sure to get them!  Strength increases the amount of damage your attacks can inflict on others and raises your ability to carry heavy weight.  Your stamina affects your health.  This is crucial.")
end

function MonkChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's good to know.", "MonkChat3")
	StartConversation(conversation, NPC, Spawn, "But first and foremost, you should know the power you wield.  We focus our minds and bodies through tranquility and subtleness in order to withstand attacks and reduce the amount of damage inflicted upon us.  We can also use it to purge our bodies of ailments, move invisibly past an enemy or even fool opponents into believing us dead.")
end

function MonkChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That will be useful!", "MonkChat4")
	StartConversation(conversation, NPC, Spawn, "But our discipline offers a great deal more than just defense.  Our attacks are formidable and swift, as well!  This allows us to often hold a foe's attention while others attack it.")
end

function MonkChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "MonkChat5")
	StartConversation(conversation, NPC, Spawn, "And although we excel at hand to hand combat, some of our brethren wield staves or hammers.  Such weapons are simply an extension of yourself and can be equally effective at inflicting damage or deflecting an attacker's blade.")
end

function MonkChat5(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself as best you can in leather, " .. GetName(Spawn) .. ".  An encumbering suit of armor would only hinder you and interfere with our superior hand to hand combat.")
end