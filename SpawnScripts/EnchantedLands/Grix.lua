--[[
	Script Name	: SpawnScripts/EnchantedLands/Grix.lua
	Script Purpose	: Grix 
	Script Author	: TyroneSWG
	Script Date	: 2019.01.14
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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

	PlayFlavor(NPC, "", "Aieeeee!!", "", 1689589577, 4560189, Spawn)
end

