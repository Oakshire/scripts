--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427097.lua
	Script Purpose	:	Waypoint Path for areefturtle427097.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:19 
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
	MovementLoopAddLocation(NPC, 25.9, -12.6, 15.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.7, -12.64, 21.68, 2, 0)
	MovementLoopAddLocation(NPC, 23.48, -12.39, 31, 2, 0)
	MovementLoopAddLocation(NPC, 20.39, -12.3, 37.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.81, -13.01, 33.81, 2, 0)
	MovementLoopAddLocation(NPC, -10.11, -13.03, 30.63, 2, 0)
	MovementLoopAddLocation(NPC, -17.34, -13.26, 31.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.06, -13.44, 33.8, 2, 0)
	MovementLoopAddLocation(NPC, -6.01, -11.86, 42.86, 2, 0)
	MovementLoopAddLocation(NPC, -3.54, -11.63, 49.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.09, -12.28, 44.78, 2, 0)
	MovementLoopAddLocation(NPC, -9.85, -13.91, 36.59, 2, 0)
	MovementLoopAddLocation(NPC, -17.06, -14.93, 32.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.62, -12.99, 26.65, 2, 0)
	MovementLoopAddLocation(NPC, 0.91, -12.9, 24.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.93, -12.34, 41.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.99, -12.18, 42.93, 2, 0)
	MovementLoopAddLocation(NPC, 4.08, -13.12, 47.92, 2, 0)
	MovementLoopAddLocation(NPC, 10.72, -13.48, 54.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.17, -12.33, 49.01, 2, 0)
	MovementLoopAddLocation(NPC, -8.01, -11.75, 46.43, 2, 0)
	MovementLoopAddLocation(NPC, -11.72, -12.1, 44.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.35, -12.7, 33.16, 2, 0)
	MovementLoopAddLocation(NPC, 14.62, -12.88, 25.52, 2, 0)
end


