--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427560.lua
	Script Purpose	:	Waypoint Path for aneedlefang427560.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:34 
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
	MovementLoopAddLocation(NPC, -91.73, -13.73, 225.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.68, -12.44, 222.76, 2, 0)
	MovementLoopAddLocation(NPC, -88.95, -12.43, 218.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.26, -15.09, 214.66, 2, 0)
	MovementLoopAddLocation(NPC, -116.72, -15.2, 212.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.23, -13.75, 233.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.75, -11.87, 225.86, 2, 0)
	MovementLoopAddLocation(NPC, -139.78, -12.43, 223.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.48, -12.39, 227.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.72, -12.1, 230.91, 2, 0)
	MovementLoopAddLocation(NPC, -108.41, -12.35, 231.06, 2, 0)
	MovementLoopAddLocation(NPC, -106.22, -12.47, 228.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.61, -12.09, 230.99, 2, 0)
	MovementLoopAddLocation(NPC, -129.47, -13.19, 230.43, 2, 0)
	MovementLoopAddLocation(NPC, -134.75, -13.65, 229.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.7, -13.64, 239.52, 2, 0)
	MovementLoopAddLocation(NPC, -116.34, -12.62, 241.05, 2, 0)
	MovementLoopAddLocation(NPC, -106.86, -12.56, 242.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.93, -14.5, 213.53, 2, 0)
	MovementLoopAddLocation(NPC, -106.71, -14.99, 201.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.29, -12.3, 220.53, 2, 0)
	MovementLoopAddLocation(NPC, -124.48, -12.4, 229.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.49, -13.5, 229.32, 2, 0)
end

