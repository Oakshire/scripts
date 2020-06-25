--[[
	Script Name	: SpawnScripts/QeynosHarbor/LitheonMcElhannon.lua
	Script Purpose	: Litheon McElhannon <Reforging>
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

	PlayFlavor(NPC, "", "You do not currently own the Age of Discovery expansion pack!", "no", 1689589577, 4560189, Spawn)
end

