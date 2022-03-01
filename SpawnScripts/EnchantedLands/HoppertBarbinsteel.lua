--[[
	Script Name	: SpawnScripts/EnchantedLands/HoppertBarbinsteel.lua
	Script Purpose	: Hoppert Barbinsteel
	Script Author	: Cynnar
	Script Date	: 2015.03.30
	Script Notes	: Manually Created Conversation
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Do not confuse me as some simple mountebank, selling whatever sort of quack medicine the local alchemist claims to cure your sniffles. I assure you, our paths are never meant to cross. Good day.")
end