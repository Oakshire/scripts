--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427091.lua
	Script Purpose	:	Waypoint Path for areefturtle427091.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:33 
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
	MovementLoopAddLocation(NPC, 19.14, -12.71, 18.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.06, -12.82, 21.82, 2, 0)
	MovementLoopAddLocation(NPC, 13.08, -12.64, 27.53, 2, 0)
	MovementLoopAddLocation(NPC, 10, -11.75, 37.09, 2, 0)
	MovementLoopAddLocation(NPC, 8.12, -11.68, 41.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.48, -12.67, 40.86, 2, 0)
	MovementLoopAddLocation(NPC, -2.1, -13.07, 40.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.99, -12.85, 50.29, 2, 0)
	MovementLoopAddLocation(NPC, 23.67, -12.26, 61.74, 2, 0)
	MovementLoopAddLocation(NPC, 32.53, -11.81, 71.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.18, -12.12, 54.61, 2, 0)
	MovementLoopAddLocation(NPC, 23.35, -13.63, 43.77, 2, 0)
	MovementLoopAddLocation(NPC, 22.62, -13.75, 40.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.3, -13.46, 34.59, 2, 0)
	MovementLoopAddLocation(NPC, 19.19, -13.72, 30.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.42, -13.25, 31.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.8, -13.73, 40.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.48, -14.16, 41.15, 2, 0)
	MovementLoopAddLocation(NPC, 22.42, -13.72, 40.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.48, -13.69, 48.42, 2, 0)
	MovementLoopAddLocation(NPC, 12.78, -13.27, 52.76, 2, 0)
	MovementLoopAddLocation(NPC, 12.36, -12.71, 56.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.67, -10.51, 77.7, 2, math.random(10, 20))
end


