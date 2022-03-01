--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427643.lua
	Script Purpose	:	Waypoint Path for aneedlefang427643.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:57 
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
	MovementLoopAddLocation(NPC, 59.53, -12.03, 33.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.61, -11.44, 31.7, 2, 0)
	MovementLoopAddLocation(NPC, 82.45, -11.53, 31.01, 2, 0)
	MovementLoopAddLocation(NPC, 89.57, -12.54, 26.32, 2, 0)
	MovementLoopAddLocation(NPC, 93.46, -12.78, 25.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.11, -10.3, 25.9, 2, 0)
	MovementLoopAddLocation(NPC, 53.9, -10.3, 28.06, 2, 0)
	MovementLoopAddLocation(NPC, 43.18, -12.11, 29.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.08, -12.89, 37.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.94, -12.95, 27.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.12, -11.13, 26.5, 2, 0)
	MovementLoopAddLocation(NPC, 55.37, -11.43, 27.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.65, -11.96, 16.15, 2, 0)
	MovementLoopAddLocation(NPC, 76.25, -13.37, 9.03, 2, 0)
	MovementLoopAddLocation(NPC, 78.46, -13.69, 5.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.96, -12.37, 11.58, 2, 0)
	MovementLoopAddLocation(NPC, 63.76, -11.87, 20.49, 2, 0)
	MovementLoopAddLocation(NPC, 55.85, -12.2, 21.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.37, -11.31, 27.37, 2, 0)
end


