--[[
	Script Name	: SpawnScripts/FrostfangSea/SanaStrongbellow.lua
	Script Purpose	: Sana Strongbellow <Work Orders>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll work towards that end then.")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, until you have chosen a specialty in your craft I do not have any work orders for you.  Come see me when you're more practiced in your trade.")
end

