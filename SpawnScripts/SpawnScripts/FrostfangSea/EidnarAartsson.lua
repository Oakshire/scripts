--[[
	Script Name		:	SpawnScripts/FrostfangSea/EidnarAartsson.lua
	Script Purpose	:	troubador trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local TROUBADOR = 36

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == TROUBADOR then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a fellow troubador?", "TroubChat1")
		AddConversationOption(conversation, "It certainly can. Good bye.")
		StartConversation(conversation, NPC, Spawn, "Welcome, fellow troubador. This city can always use more talented performers!")
	else
		PlayFlavor(NPC, "", "What's that?", "hello", 0, 0, Spawn)
	end
end

function TroubChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "TroubChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your agility or stamina, then take them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function TroubChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's interesting.", "TroubChat3")
	StartConversation(conversation, NPC, Spawn, "Our songs of cheer are incredibly valuable to others.  They can embolden mages and anyone else wielding magical spells, increasing their offense and granting them the power to perform outstanding feats.")
end

function TroubChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "But do not neglect your weapon skills.  These are essential to our survival!  Uplifting songs can strengthen you and your group mates, but without a weapon to inflict damage there is no killing blow.")
end