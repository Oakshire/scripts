--[[
	Script Name		:	SpawnScripts/FrostfangSea/OrnIceheart.lua
	Script Purpose	:	warlock trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local WARLOCK = 24

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == WARLOCK then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you have any advice for a fellow warlock then?", "LockChat1")
		AddConversationOption(conversation, "Well, you should. Good bye.")
		StartConversation(conversation, NPC, Spawn, "My, my!  Another warlock within our midst.  Do not worry; I do not consider you a threat.")
	else
		PlayFlavor(NPC, "", "Well met!", "hello", 0, 0, Spawn)
	end
end

function LockChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "LockChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your intelligence or stamina, then take them!  Intelligence affects your spell focus and increases the damage your spells can cause.  Your stamina affects your health.  This is crucial!")
end

function LockChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's interesting.", "LockChat3")
	StartConversation(conversation, NPC, Spawn, "We are masters of death and decay, inflicting poison and disease upon those that dare to challenge us, particularly on groups of opponents.")
end

function LockChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "There are other adventuring classes that must rely on strong defenses to survive, but we focus on the offense.  No need to defend yourself from a foe who is writhing in pain, plagued with disease!")
end