--[[
	Script Name		:	SpawnScripts/FrostfangSea/SuhubaVankedisi.lua
	Script Purpose	:	berserker trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local BERSERKER = 4

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == BERSERKER then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice can you give to another berserker?", "ZerkChat1")
		AddConversationOption(conversation, "It does, doesn't it? Good day.")
		StartConversation(conversation, NPC, Spawn, "I see a familiar fire in your eyes, warrior. The same burning rage that resides within all berserkers!")
	else
		PlayFlavor(NPC, "", "This land is full of battle.  I like it!", 0, 0, Spawn)
	end
end

function ZerkChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That will be useful!", "ZerkChat2")
	StartConversation(conversation, NPC, Spawn, "Let that rage consume you!  It makes you stronger and fuels your unbridled aggression and fury. This is especially useful when facing many foes at once, inflicting damage on the highest amount of enemies with our wild swings.")
end

function ZerkChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That's interesting.", "ZerkChat3")
	StartConversation(conversation, NPC, Spawn, "But it is not just an offensive power.  It also helps reduce the amount of damage inflicted upon you, and can help you regain your health when you have been injured.")
end

function ZerkChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That's useful to know!", "ZerkChat4")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your strength or stamina, be sure to get them!  Strength increases the amount of damage your attacks can inflict on others and raises your ability to carry heavy weight. Your stamina affets your health.  This is crucial.")
end

function ZerkChat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself with a good set of plate mail, " .. GetName(Spawn) .. ". The armor would be considered too heavy by others, but with your focus on strength such highly protective armor has no downside.")
end