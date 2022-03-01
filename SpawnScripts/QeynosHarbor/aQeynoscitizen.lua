--[[
	Script Name	: SpawnScripts/QeynosHarbor/aQeynoscitizen.lua
	Script Purpose	: a Qeynos citizen 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	waypoints(NPC)
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Are they here as spies?  Are they planning an attack?", "ponder", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Have you seen them?  I've heard that ratonga have been spotted in the city!", "agree", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Argh, it's not enough that they filthy up Freeport, now they've come here to spread their disease and muck around our city?  PAH!", "angry", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "The Council hasn't said anything about the ratonga yet.  I wonder what's going on?", "ponder", 1689589577, 4560189, Spawn)
	else
	end

end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 822.63, -23.36, 108.25, 2, 30)
	MovementLoopAddLocation(NPC, 818.87, -23.32, 104.58, 2, 0)
	MovementLoopAddLocation(NPC, 820.26, -23.33, 81.49, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.5, 52.35, 2, 15)
	MovementLoopAddLocation(NPC, 836.02, -23.31, 46.13, 2, 0)
	MovementLoopAddLocation(NPC, 857.63, -25.39, 43.18, 2, 0)
	MovementLoopAddLocation(NPC, 882.96, -25.45, 48.95, 2, 0)
	MovementLoopAddLocation(NPC, 895.26, -25.5, 45.79, 2, 0)
	MovementLoopAddLocation(NPC, 926.1, -25.56, 55.37, 2, 0)
	MovementLoopAddLocation(NPC, 954.75, -25.56, 66.07, 2, 30)
	MovementLoopAddLocation(NPC, 926.1, -25.56, 55.37, 2, 0)
	MovementLoopAddLocation(NPC, 895.26, -25.5, 45.79, 2, 0)
	MovementLoopAddLocation(NPC, 882.96, -25.45, 48.95, 2, 0)
	MovementLoopAddLocation(NPC, 857.63, -25.39, 43.18, 2, 0)
	MovementLoopAddLocation(NPC, 836.02, -23.31, 46.13, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.5, 52.35, 2, 15)
	MovementLoopAddLocation(NPC, 820.26, -23.33, 81.49, 2, 0)
	MovementLoopAddLocation(NPC, 818.87, -23.32, 104.58, 2, 0)
	MovementLoopAddLocation(NPC, 822.63, -23.36, 108.25, 2, 30)
end