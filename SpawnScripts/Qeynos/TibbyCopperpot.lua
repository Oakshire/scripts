--[[
	Script Name	: SpawnScripts/SouthQeynos/TibbyCopperpot.lua
	Script Purpose	: Tibby Copperpot <Baker>
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

	PlayFlavor(NPC, "", "I sure do love to cook.  Yummy baked goods and cakes.  I make my sister do all the selling.  To tell you the truth I think she likes it.", "", 1689589577, 4560189, Spawn)
end

