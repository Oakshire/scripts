--[[
	Script Name		:	SpawnScripts/FrostfangSea/GarrotNuesoon.lua
	Script Purpose	:	assassin trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local ASSASSIN = 40

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == ASSASSIN then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a fellow assasin?", "SinChat1")
		AddConversationOption(conversation, "It certainly is. Good bye.")
		StartConversation(conversation, NPC, Spawn, "Ah, another assassin!  It is a dangerous profession that you have chosen, but well worth it.")
	else
		PlayFlavor(NPC, "", "To attack from the shadows is the greatest of advantages.  An enemy cannot defend against an attack it can never see.", "hello", 0, 0, Spawn)
	end
end

function SinChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "I would appreciate it.", "SinChat2")
	StartConversation(conversation, NPC, Spawn, "Understand that it goes against my very nature to give away anything I consider a trade secret, but I can part with a few bits of wisdom.")
end

function SinChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's useful to know!", "SinChat3")
	StartConversation(conversation, NPC, Spawn, "Procure items that add to your agility or stamina, when you find them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function SinChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "SinChat4")
	StartConversation(conversation, NPC, Spawn, "Our most devastating attacks are sudden strikes to vital organs from a cover of darkness.  These opportunistic attacks performed under a cover of concealment surprises our target, thus giving them less chance to protect themselves.")
end

function SinChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "What should I do then?", "SinChat5")
	StartConversation(conversation, NPC, Spawn, "Keep in mind that the majority of our attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  So you must be aware of situations in which there are multiple foes, as positional attacks are of little use when you're surrounded!")
end

function SinChat5(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "I suggest you employ a divide and conquer tactic, and cut them down as fast as possible.  And do not overlook the power of poisons, in any situation!")
end