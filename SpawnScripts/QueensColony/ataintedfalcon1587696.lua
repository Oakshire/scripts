--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587696.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587696.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:18 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 279.15, 1.8, -10.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 268.15, 1.89, -6.42, 2, 0)
	MovementLoopAddLocation(NPC, 253.87, 1.93, -3.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 225.98, 1.83, -1.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.47, 2.56, -28.36, 2, 0)
	MovementLoopAddLocation(NPC, 241.94, 2.88, -33.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 250.45, 2.67, -22.78, 2, 0)
	MovementLoopAddLocation(NPC, 258.1, 2.56, -18.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 266.56, -1.78, -14.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.51, 1.42, -35.75, 2, 0)
	MovementLoopAddLocation(NPC, 242.94, 2.32, -39.68, 2, 0)
	MovementLoopAddLocation(NPC, 242.67, 2.82, -47.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 253.85, 2.31, -51.83, 2, 0)
	MovementLoopAddLocation(NPC, 257.87, 1.8, -55.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.92, 1.85, -60.33, 2, 0)
	MovementLoopAddLocation(NPC, 252.56, 1.93, -64.56, 2, 0)
	MovementLoopAddLocation(NPC, 243.79, 2, -70.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.43, 2.67, -80.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.77, 1.05, -57.37, 2, 0)
	MovementLoopAddLocation(NPC, 245.71, -0.79, -24.5, 2, 0)
	MovementLoopAddLocation(NPC, 247.57, -1.27, -21.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 262.3, 1.08, -17.85, 2, 0)
end

