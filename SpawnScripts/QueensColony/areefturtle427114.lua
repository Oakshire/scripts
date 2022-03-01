--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427114.lua
	Script Purpose	:	Waypoint Path for areefturtle427114.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:50:07 
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
	MovementLoopAddLocation(NPC, 12.27, -14.74, 43.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.51, -13.46, 49.28, 2, 0)
	MovementLoopAddLocation(NPC, 23.7, -12.29, 60.78, 2, 0)
	MovementLoopAddLocation(NPC, 27.24, -11.74, 68.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.21, -12.18, 58.46, 2, 0)
	MovementLoopAddLocation(NPC, 24.11, -13.29, 48.02, 2, 0)
	MovementLoopAddLocation(NPC, 26.05, -13.45, 42.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.27, -13.79, 44.08, 2, 0)
	MovementLoopAddLocation(NPC, 16.59, -13.61, 47.32, 2, 0)
	MovementLoopAddLocation(NPC, 9.56, -11.92, 56, 2, 0)
	MovementLoopAddLocation(NPC, 3.44, -10.69, 62.84, 2, 0)
	MovementLoopAddLocation(NPC, -3.49, -10.66, 68.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.56, -10.2, 64.3, 2, 0)
	MovementLoopAddLocation(NPC, -13.43, -11.06, 52.88, 2, 0)
	MovementLoopAddLocation(NPC, -17.13, -12.29, 45.85, 2, 0)
	MovementLoopAddLocation(NPC, -21.84, -12.75, 42.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.16, -14.33, 36.24, 2, 0)
	MovementLoopAddLocation(NPC, -13.18, -14.58, 32.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.98, -12.17, 30.28, 2, 0)
	MovementLoopAddLocation(NPC, -1.04, -12.38, 28.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.66, -13.35, 30.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.93, -13.14, 46.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.54, -14.54, 43.46, 2, 0)
end


