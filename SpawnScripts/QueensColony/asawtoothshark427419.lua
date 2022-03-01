--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427419.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427419.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:42 
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
	MovementLoopAddLocation(NPC, 23.82, -15.6, -22.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.56, -13.77, -15.84, 2, 0)
	MovementLoopAddLocation(NPC, 39.91, -12.81, -7.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.5, -11.73, -11.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.05, -12.1, -6.47, 2, 0)
	MovementLoopAddLocation(NPC, 45.65, -12.84, -3.75, 2, 0)
	MovementLoopAddLocation(NPC, 40.4, -12.71, -2.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.43, -12.12, -19.81, 2, 0)
	MovementLoopAddLocation(NPC, 59.28, -12.13, -19.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.69, -12.37, -19.92, 2, 0)
	MovementLoopAddLocation(NPC, 43.05, -12.46, -19.05, 2, 0)
	MovementLoopAddLocation(NPC, 22.17, -12.78, -18.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.46, -12.92, -8.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.15, -11.9, -19.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.08, -12.85, -14.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.31, -13.71, -18.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.62, -13.61, -21.74, 2, 0)
	MovementLoopAddLocation(NPC, 41.98, -12.71, -26.03, 2, 0)
	MovementLoopAddLocation(NPC, 45.81, -11.72, -27.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.35, -13.62, -24.36, 2, 0)
	MovementLoopAddLocation(NPC, 23.44, -15.26, -21.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.41, -14.41, -12.12, 2, math.random(10, 20))
end


