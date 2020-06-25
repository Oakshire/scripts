--[[
	Script Name	: SpawnScripts/SouthQeynos/Khalilmun.lua
	Script Purpose	: Khalil`mun <Alchemist>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	PlayFlavor(NPC, "", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 1689589577, 4560189, Spawn)
end

