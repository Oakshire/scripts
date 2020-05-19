--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/Glitzen.lua
	Script Purpose	: Glitzen <Santa Glug's helper>
	Script Author	: Cynnar
	Script Date	: 2019.10.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Glug, the Gigglegibber gifter, is much better than elf gifter.", "threaten", 1689589577, 4560189, Spawn)
end

