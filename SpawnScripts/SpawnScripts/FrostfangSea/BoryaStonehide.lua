--[[
	Script Name		:	SpawnScripts/FrostfangSea/BoryaStonehide.lua
	Script Purpose	:	guardian trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local GUARDIAN = 3

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == GUARDIAN then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice can you give a fellow guardian?", "GuardChat1")
		AddConversationOption(conversation, "It does, doesn't it?  Good day.")
		StartConversation(conversation, NPC, Spawn, "I see a familiar fire in your eyes, warrior.  The same unrelenting will that resides within all guardians!")
	else
		PlayFlavor(NPC, "", "I hope you're ready for some serious training!", "hello", 0, 0, Spawn)
	end
end

function GuardChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "GuardChat2")
	StartConversation(conversation, NPC, Spawn, "We are often considered the last wall of defense, and for good reason.  We protect our allies with unflinching resolve, as that is our call.  We protect, above all!")
end

function GuardChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That will be useful!", "GuardChat3")
	StartConversation(conversation, NPC, Spawn, "And when you are faced with multiple foes, prioritize your opponents.  It often behooves you and your group to pit yourself against the most powerful opponent.")
end

function GuardChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's good.", "GuardChat4")
	StartConversation(conversation, NPC, Spawn, "We leave the more offensive style attacks to others who lack the fortitude to take a beating and defend, but this doesn't mean we can't swing a weapon!")
end

function GuardChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "GuardChat5")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your strength or stamina, be sure to get them!  Strength increases the amount of damage your attacks can inflict on others and raises your ability to carry heavy weight.  Your stamina affects your health.  This is crucial.")
end

function GuardChat5(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself with a good set of plate mail, " .. GetName(Spawn) .. ". The armor would be considered too heavy by others, but with your focus on strength such highly protective armor has no downside.")
end