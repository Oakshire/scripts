--[[
	Script Name	: SpawnScripts/Graystone/PathfinderSilentstride.lua
	Script Purpose	: Pathfinder Silentstride 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride000.mp3", "", "", 3050887805, 230076738, Player, Spawn)
	AddConversationOption(conversation, "Thanks for the warning.")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer. Be careful travling outside the city.The nearby wilderness is as unforgiving as the fates themselves.")
end