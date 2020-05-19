--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/GerbiFrostfoot.lua
	Script Purpose	: Gerbi Frostfoot <Frostfoot Merchant>
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

	PlayFlavor(NPC, "", "Yous not gained the Frostfootses trust yets... Talk to Snarf to sees what yous can do for da Frostfootses!", "heckno", 1689589577, 4560189, Spawn)
end

