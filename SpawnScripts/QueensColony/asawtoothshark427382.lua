--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427382.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427382.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:48 
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
	MovementLoopAddLocation(NPC, -47.48, -10.7, -35.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.43, -10.7, -47.86, 2, 0)
	MovementLoopAddLocation(NPC, -12.91, -10.7, -61.2, 2, 0)
	MovementLoopAddLocation(NPC, -8.84, -10.7, -68.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.81, -10.7, -54.91, 2, 0)
	MovementLoopAddLocation(NPC, -13.03, -11.09, -47.14, 2, 0)
	MovementLoopAddLocation(NPC, -11.86, -11.16, -40.63, 2, 0)
	MovementLoopAddLocation(NPC, -6.99, -11.67, -26.25, 2, 0)
	MovementLoopAddLocation(NPC, -4.11, -11.71, -21.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.75, -12.33, -19.07, 2, 0)
	MovementLoopAddLocation(NPC, -20.18, -12.62, -17.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.06, -12.01, -21.41, 2, 0)
	MovementLoopAddLocation(NPC, -29.06, -11.73, -26.74, 2, 0)
	MovementLoopAddLocation(NPC, -39.86, -11.26, -39.27, 2, 0)
	MovementLoopAddLocation(NPC, -43.98, -11.18, -41.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.01, -10.7, -52.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.82, -10.7, -64.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.77, -10.7, -48.19, 2, 0)
	MovementLoopAddLocation(NPC, -64.3, -10.7, -38.51, 2, 0)
	MovementLoopAddLocation(NPC, -70.21, -10.7, -28.32, 2, 0)
	MovementLoopAddLocation(NPC, -72.22, -10.7, -18.69, 2, 0)
	MovementLoopAddLocation(NPC, -78.98, -10.7, -10.85, 2, 0)
	MovementLoopAddLocation(NPC, -81.15, -11.85, 0.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -86.5, -11.63, 14.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.76, -10.61, 11.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.36, -11.18, -5.94, 2, 0)
	MovementLoopAddLocation(NPC, -74.41, -10.7, -16.84, 2, 0)
	MovementLoopAddLocation(NPC, -68.06, -10.7, -26.16, 2, 0)
	MovementLoopAddLocation(NPC, -60.5, -10.57, -44.16, 2, 0)
	MovementLoopAddLocation(NPC, -53.61, -10.7, -46.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.11, -10.7, -54.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.64, -10.7, -54.77, 2, 0)
	MovementLoopAddLocation(NPC, -1.25, -11.16, -66.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.12, -11.11, -51.54, 2, 0)
	MovementLoopAddLocation(NPC, -32.25, -11.06, -39.84, 2, 0)
end

