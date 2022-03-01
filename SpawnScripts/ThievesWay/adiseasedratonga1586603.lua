--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586603.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586603.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:47:05 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -147.63, -0.83, 181.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -139.02, -0.56, 175.86, 2, 0)
	MovementLoopAddLocation(NPC, -139.04, -0.56, 175.82, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.77, -0.56, 165.71, 2, 0)
	MovementLoopAddLocation(NPC, -152.47, -0.56, 165.78, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.49, -0.60, 165.87, 2, 0)
	MovementLoopAddLocation(NPC, -142.89, -0.92, 171.91, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -128.77, -0.64, 175.80, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.55, -1.16, 176.10, 2, 0)
	MovementLoopAddLocation(NPC, -141.56, -0.72, 185.66, 2, 0)
	MovementLoopAddLocation(NPC, -145.25, -0.56, 187.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.04, -0.80, 185.67, 2, 0)
	MovementLoopAddLocation(NPC, -137.79, -1.94, 181.95, 2, 0)
	MovementLoopAddLocation(NPC, -137.78, -0.84, 177.59, 2, 0)
	MovementLoopAddLocation(NPC, -134.75, -0.56, 174.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -141.11, -0.56, 175.31, 2, 0)
end

