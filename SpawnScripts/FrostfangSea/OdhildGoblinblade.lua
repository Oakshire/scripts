--[[
	Script Name		:	SpawnScripts/FrostfangSea/OdhildGoblinblade.lua
	Script Purpose	:	swashbuckler trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local SWASHBUCKLER = 33

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == SWASHBUCKLER then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a fellow swashbuckler?", "SwashChat1")
		AddConversationOption(conversation, "It certainly is. Good bye.")
		StartConversation(conversation, NPC, Spawn, "Welcome, fellow swashbuckler!  It is such a pleasure to meet another dashing rogue within this city.")
	else
		PlayFlavor(NPC, "", "Well, well, what have we here?", "hello", 0, 0, Spawn)
	end
end

function SwashChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "SwashChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your agility or stamina, then take them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function SwashChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's interesting.", "SwashChat3")
	StartConversation(conversation, NPC, Spawn, "We have talents in dealing with damage but we are particularly skilled at weakening our opponent's attacks.")
end

function SwashChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "I bet it is!", "SwashChat4")
	StartConversation(conversation, NPC, Spawn, "Keep in mind that some of our attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  But thankfully, we have enough devastating attacks that are straightforward and can be used from any position.  This is very useful when dealing with multiple opponents!")
end

function SwashChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Focus on improving your own skills for your opponent is sure to be defeated in the face of your growing prowess.")
end