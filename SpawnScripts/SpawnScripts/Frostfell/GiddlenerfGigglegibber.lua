--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/GiddlenerfGigglegibber.lua
	Script Purpose	: Giddlenerf Gigglegibber <Fuel Merchant>
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

	PlayFlavor(NPC, "", "Merry Frostfell!", "", 1689589577, 4560189, Spawn)
end

