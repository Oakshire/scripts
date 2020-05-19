--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425528.lua
	Script Purpose	:	Waypoint Path for ashoalglider425528.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:24 
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
	MovementLoopAddLocation(NPC, 25.78, -12.35, 15.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.89, -12.16, 19.25, 2, 0)
	MovementLoopAddLocation(NPC, 20.4, -12.06, 23.45, 2, 0)
	MovementLoopAddLocation(NPC, 12.58, -12.07, 29.59, 2, 0)
	MovementLoopAddLocation(NPC, 8.68, -13.1, 34.49, 2, 0)
	MovementLoopAddLocation(NPC, 3.5, -13.49, 45.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.77, -12.98, 31.65, 2, 0)
	MovementLoopAddLocation(NPC, 41.43, -12.95, 16.41, 2, 0)
	MovementLoopAddLocation(NPC, 49.11, -12.26, 14.94, 2, 0)
	MovementLoopAddLocation(NPC, 57.06, -12.52, 14.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.12, -12.36, 19.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.14, -11.51, 21.43, 2, 0)
	MovementLoopAddLocation(NPC, 61.75, -11.55, 21.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.4, -11.1, 25.36, 2, 0)
	MovementLoopAddLocation(NPC, 30.55, -12.92, 36.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.51, -12.95, 29.09, 2, 0)
	MovementLoopAddLocation(NPC, 14.14, -12.8, 22.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.26, -12.19, 35.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.16, -12.67, 26.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.16, -11.47, 48.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.62, -11.98, 28.64, 2, 0)
end


