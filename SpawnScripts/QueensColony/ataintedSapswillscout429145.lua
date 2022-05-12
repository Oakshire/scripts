--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429145.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout429145.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:13:58 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    SpawnSet(NPC, "hp", 110)
    SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 234.73, -0.83, -138.56, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 243.79, -0.87, -141.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.51, -0.97, -148.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 232.47, -0.83, -127.16, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 230.86, -0.92, -116.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.43, -0.84, -143.31, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 233.04, -1.02, -116.43, 2, 0)
	MovementLoopAddLocation(NPC, 230.79, -1.04, -109.99, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 232.64, -1.02, -117.21, 2, 0)
	MovementLoopAddLocation(NPC, 233.62, -0.83, -127.28, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.75, -1.5, -118.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.73, -1.06, -145.14, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.15, -0.93, -143.51, 2, 0)
	MovementLoopAddLocation(NPC, 231.45, -0.82, -134.74, 2, math.random(14, 28))
end

