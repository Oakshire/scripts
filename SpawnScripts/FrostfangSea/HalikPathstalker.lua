--[[
	Script Name		:	SpawnScripts/FrostfangSea/HalikPathstalker.lua
	Script Purpose	:	ranger trainer in halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local RANGER = 39

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == RANGER then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a fellow ranger?", "RangChat1")
		AddConversationOption(conversation, "It certainly is. Good bye.")
		StartConversation(conversation, NPC, Spawn, "Welcome, fellow swashbuckler!  It is such a pleasure to meet another dashing rogue within this city.")
	else
		PlayFlavor(NPC, "", "Watch your back.  You'd be surprised how many blades fit perfectly there.", "hello", 0, 0, Spawn)
	end
end

function RangChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "I'll keep that in mind.", "RangChat2")
	StartConversation(conversation, NPC, Spawn, "First and foremost, be in control of the range of any fights you are involved in.  Release a deadly volley of arrows from a distance, and if your foe survives long enough to engage in hand to hand combat, remember that you are also skilled at wielding daggers and swords.")
end

function RangChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "Sounds like good advice.", "RangChat3")
	StartConversation(conversation, NPC, Spawn, "Some of our most effective hand to hand attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  So you must be aware of situations in which there are multiple foes, and avoid becoming the center of attention, as positional attacks are of little use when you're surrounded!")
end

function RangChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!")
	StartConversation(conversation, NPC, Spawn, "Last but not least, obtain items that add to your agility or stamina, when you find them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end