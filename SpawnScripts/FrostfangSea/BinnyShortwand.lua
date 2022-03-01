--[[
	Script Name		:	SpawnScripts/FrostfangSea/BinnyShortwand.lua
	Script Purpose	:	illusionist trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local ILLUSIONIST = 26

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == ILLUSIONIST then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you have any advice for a fellow illusionist?", "IlluChat1")
		AddConversationOption(conversation, "That's good to know.  Good day.")
		StartConversation(conversation, NPC, Spawn, "I see you have chosen the path of an illusionist.  It may be challenging, but I find it rather rewarding.")
	else
		PlayFlavor(NPC, "", "Don't let your illusions be shattered!", "hello", 0, 0, Spawn)
	end
end

function IlluChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "IlluChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your intelligence or stamina, then take them!  Intelligence affects your spell focus and increases the damage your spells can cause.  Your stamina affects your health.  This is crucial.")
end

function IlluChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "IlluChat3")
	StartConversation(conversation, NPC, Spawn, "Know your strengths and hone them!  We can mesmerize and otherwise captivate our foes through distraction and mental acuity.  This is particularly useful when you are confronted with multiple foes.")
end

function IlluChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "A strong illusionist can bring order to an otherwise chatoic environment, giving themselves and their allies the ability to fight one adversary at a time.  And the most advanced have been known to conjure an illusion of themselves to aid in combat!")
end