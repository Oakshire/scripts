--[[
	Script Name	: SpawnScripts/GreaterFaydark/GrandmasterFeldmanus.lua
	Script Purpose	: Grandmaster Feldmanus <Trades Coordinator>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "", "Come see me later, I may have some work for you once you're more skilled in your trade.", "", 1689589577, 4560189, Spawn)
end

