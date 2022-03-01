--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427385.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427385.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:41 
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
	MovementLoopAddLocation(NPC, 84.63, -10.98, -45.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.34, -11.01, -46.87, 2, 0)
	MovementLoopAddLocation(NPC, 63.91, -11.8, -60.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.37, -11.92, -67.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.82, -11.73, -60.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.79, -11.18, -51.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.28, -10.7, -57.43, 2, 0)
	MovementLoopAddLocation(NPC, 40.69, -10.7, -69.89, 2, 0)
	MovementLoopAddLocation(NPC, 30.27, -10.7, -79.5, 2, 0)
	MovementLoopAddLocation(NPC, 24.75, -11.06, -87.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.81, -11.7, -74.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.21, -11.87, -80.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.55, -11.79, -48.34, 2, 0)
	MovementLoopAddLocation(NPC, 77.63, -11.96, -35.76, 2, 0)
	MovementLoopAddLocation(NPC, 78.08, -11.76, -29.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.69, -11.28, -41, 2, 0)
	MovementLoopAddLocation(NPC, 85.95, -11, -43.95, 2, 0)
	MovementLoopAddLocation(NPC, 94.21, -11.22, -43.57, 2, math.random(10, 20))
end


