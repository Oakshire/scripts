--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427106.lua
	Script Purpose	:	Waypoint Path for areefturtle427106.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:08 
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
	MovementLoopAddLocation(NPC, 71.72, -11.57, 5.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.03, -11.48, 1.02, 2, 0)
	MovementLoopAddLocation(NPC, 85.43, -12.21, -4.43, 2, 0)
	MovementLoopAddLocation(NPC, 90.05, -12.44, -8.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.99, -12.68, -1.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.36, -12.76, 25.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.79, -12.78, 2.7, 2, 0)
	MovementLoopAddLocation(NPC, 90.7, -12.77, -13.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.78, -12.51, -3.43, 2, 0)
	MovementLoopAddLocation(NPC, 94.59, -12.54, 7.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.28, -12.77, 15.32, 2, 0)
	MovementLoopAddLocation(NPC, 95, -12.93, 18.91, 2, 0)
	MovementLoopAddLocation(NPC, 99.51, -12.93, 24.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.4, -12.98, 15.43, 2, 0)
	MovementLoopAddLocation(NPC, 88.09, -12.76, -0.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.17, -12.19, 3.23, 2, 0)
	MovementLoopAddLocation(NPC, 72.71, -11.98, 4.73, 2, 0)
	MovementLoopAddLocation(NPC, 10.18, -12.33, 29.44, 2, 0)
	MovementLoopAddLocation(NPC, -0.61, -12.27, 36.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.99, -12.62, 36.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.74, -13.22, 31.24, 2, 0)
	MovementLoopAddLocation(NPC, 0.97, -13.48, 29.15, 2, 0)
	MovementLoopAddLocation(NPC, 3.3, -13.86, 26.04, 2, 0)
	MovementLoopAddLocation(NPC, 4.46, -13.92, 21.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.07, -13.73, 30.16, 2, 0)
	MovementLoopAddLocation(NPC, 1.4, -13.43, 38.03, 2, 0)
	MovementLoopAddLocation(NPC, -8.17, -11.02, 55.51, 2, 0)
	MovementLoopAddLocation(NPC, -14.23, -10.55, 65.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.95, -11.05, 51.97, 2, 0)
	MovementLoopAddLocation(NPC, 30.38, -12.22, 28.84, 2, 0)
	MovementLoopAddLocation(NPC, 36.72, -12.22, 26.43, 2, 0)
	MovementLoopAddLocation(NPC, 42.81, -12.07, 22.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.88, -11.51, 13.28, 2, 0)
	MovementLoopAddLocation(NPC, 82.28, -11.93, -1.52, 2, 0)
	MovementLoopAddLocation(NPC, 93.36, -12.69, -10.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.27, -13.09, 0.12, 2, 0)
	MovementLoopAddLocation(NPC, 72.81, -11.8, 2.95, 2, 0)
end
