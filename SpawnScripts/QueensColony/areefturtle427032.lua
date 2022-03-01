--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427032.lua
	Script Purpose	:	Waypoint Path for areefturtle427032.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:54 
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
	MovementLoopAddLocation(NPC, -136.24, -11.55, 37.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.17, -12.81, 62.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.74, -13.2, 55.78, 2, 0)
	MovementLoopAddLocation(NPC, -130.79, -12.47, 52.05, 2, 0)
	MovementLoopAddLocation(NPC, -126.76, -12.12, 52.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.4, -11.5, 53.94, 2, 0)
	MovementLoopAddLocation(NPC, -132.34, -11.99, 63.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.5, -13.34, 49.28, 2, 0)
	MovementLoopAddLocation(NPC, -145.5, -13.65, 47.77, 2, 0)
	MovementLoopAddLocation(NPC, -144.51, -14.02, 41.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.71, -13.33, 47.83, 2, 0)
	MovementLoopAddLocation(NPC, -148.62, -13.59, 63.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.33, -13.39, 60.08, 2, 0)
	MovementLoopAddLocation(NPC, -145.46, -12.52, 57.88, 2, 0)
	MovementLoopAddLocation(NPC, -140.79, -12.31, 56.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.4, -12.77, 21.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.92, -12.66, 15.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.51, -12.98, 10.37, 2, 0)
	MovementLoopAddLocation(NPC, -145.33, -13.83, 6.35, 2, 0)
	MovementLoopAddLocation(NPC, -147.29, -13.75, 4.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.58, -13.63, 5.86, 2, 0)
end


