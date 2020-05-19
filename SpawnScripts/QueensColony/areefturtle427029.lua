--[[  
        Script Name     :       SpawnScripts/QueensColony/areefturtle427029.lua
	Script Purpose	:	Waypoint Path for areefturtle427029.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:23 
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
	MovementLoopAddLocation(NPC, -147.05, -13.74, 51.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.29, -13.45, 50.49, 2, 0)
	MovementLoopAddLocation(NPC, -133.57, -12.22, 51.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.24, -12.35, 52.19, 2, 0)
	MovementLoopAddLocation(NPC, -116.14, -11.76, 57.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.62, -12.3, 53.86, 2, 0)
	MovementLoopAddLocation(NPC, -135.36, -12.54, 55.54, 2, 0)
	MovementLoopAddLocation(NPC, -143.77, -12.57, 65.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.78, -12.53, 55.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.17, -12.4, 55.24, 2, 0)
	MovementLoopAddLocation(NPC, -129.65, -11.58, 55.81, 2, 0)
	MovementLoopAddLocation(NPC, -127.75, -10.52, 58.19, 2, 0)
	MovementLoopAddLocation(NPC, -113.51, -10.5, 77.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.34, -10.5, 38.54, 2, 0)
	MovementLoopAddLocation(NPC, -129.58, -11.26, 33.23, 2, 0)
	MovementLoopAddLocation(NPC, -133.25, -11.85, 27.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.58, -11.62, 45.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.73, -12.81, 53.73, 2, 0)
	MovementLoopAddLocation(NPC, -140.48, -12.32, 64.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.56, -11.7, 75.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.64, -11.75, 27.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.23, -11.58, 66.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.72, -12.31, 56.51, 2, 0)
	MovementLoopAddLocation(NPC, -144.14, -13.67, 50.75, 2, 0)
end


