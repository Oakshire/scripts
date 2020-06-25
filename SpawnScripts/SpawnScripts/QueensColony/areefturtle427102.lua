--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427102.lua
	Script Purpose	:	Waypoint Path for areefturtle427102.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:25 
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
	MovementLoopAddLocation(NPC, 12.52, -11.65, 43.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.69, -11.98, 36.39, 2, 0)
	MovementLoopAddLocation(NPC, 27.69, -12.57, 33.17, 2, 0)
	MovementLoopAddLocation(NPC, 30.79, -12.69, 29.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.97, -13.14, 20.14, 2, 0)
	MovementLoopAddLocation(NPC, 47.67, -12.78, 12.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.1, -12.78, 20.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.56, -12.58, 16.47, 2, 0)
	MovementLoopAddLocation(NPC, 32.03, -12.93, 9.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.17, -12.45, 14.2, 2, 0)
	MovementLoopAddLocation(NPC, 13.7, -12.32, 26.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.42, -12.81, 27.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.16, -11.49, 36.3, 2, 0)
end


