--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427414.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427414.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:15 
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
	MovementLoopAddLocation(NPC, -33.34, -11.57, -79.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.8, -10.7, -67.69, 2, 0)
	MovementLoopAddLocation(NPC, -40.07, -10.79, -56.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.66, -10.7, -51.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.66, -10.4, -66.94, 2, 0)
	MovementLoopAddLocation(NPC, -17.61, -10.7, -74.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.48, -10.4, -65.7, 2, 0)
	MovementLoopAddLocation(NPC, -22.74, -10.7, -49.87, 2, 0)
	MovementLoopAddLocation(NPC, -34.46, -10.7, -3.22, 2, 0)
	MovementLoopAddLocation(NPC, -37.7, -11.32, 19.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.43, -10.7, 6.83, 2, 0)
	MovementLoopAddLocation(NPC, -46.11, -10.7, 0.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.7, -10.7, -8.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.11, -10.7, -26.82, 2, 0)
	MovementLoopAddLocation(NPC, -9.4, -11.14, -27.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.75, -11.22, -32.75, 2, 0)
	MovementLoopAddLocation(NPC, -43.92, -11.14, -44.19, 2, 0)
	MovementLoopAddLocation(NPC, -50.48, -10.96, -45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.64, -10.71, -46.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.03, -10.7, -24.86, 2, 0)
	MovementLoopAddLocation(NPC, -31.34, -10.7, -12.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.3, -10.7, -24.68, 2, 0)
	MovementLoopAddLocation(NPC, -37.39, -10.7, -40.79, 2, 0)
	MovementLoopAddLocation(NPC, -38.2, -10.7, -62.44, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -11.14, -78.26, 2, math.random(10, 20))
end

