--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428615.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428615.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:46 
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
	MovementLoopAddLocation(NPC, -79.29, -10.69, 13.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.54, -10.7, 4.1, 2, 0)
	MovementLoopAddLocation(NPC, -58.34, -10.7, -6.12, 2, 0)
	MovementLoopAddLocation(NPC, -53.29, -10.7, -13.82, 2, 0)
	MovementLoopAddLocation(NPC, -45.62, -10.7, -20.64, 2, 0)
	MovementLoopAddLocation(NPC, -34.95, -11.53, -28.86, 2, 0)
	MovementLoopAddLocation(NPC, -26.23, -12.69, -40.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.06, -10.7, -44.54, 2, 0)
	MovementLoopAddLocation(NPC, -49.19, -10.7, -46.6, 2, 0)
	MovementLoopAddLocation(NPC, -59.58, -10.75, -50.86, 2, 0)
	MovementLoopAddLocation(NPC, -68.62, -10.7, -47.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.29, -10.7, -46.81, 2, 0)
	MovementLoopAddLocation(NPC, -44.23, -10.7, -42.93, 2, 0)
	MovementLoopAddLocation(NPC, -15.78, -11.85, -32.91, 2, 0)
	MovementLoopAddLocation(NPC, -7.98, -11.77, -31.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.95, -11.87, -18.74, 2, 0)
	MovementLoopAddLocation(NPC, -16.29, -12.17, 0.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.08, -11.33, -17.96, 2, 0)
	MovementLoopAddLocation(NPC, -30.59, -11.61, -41.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.71, -11.43, -47.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.09, -11.44, -35.61, 2, 0)
	MovementLoopAddLocation(NPC, -14.38, -11.67, -28.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.1, -10.7, -28.09, 2, 0)
	MovementLoopAddLocation(NPC, -48.67, -10.7, -23.8, 2, 0)
	MovementLoopAddLocation(NPC, -52.45, -10.7, -17.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.89, -10.7, -16.82, 2, 0)
	MovementLoopAddLocation(NPC, -28.9, -10.7, -14.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.24, -10.7, -9.48, 2, 0)
	MovementLoopAddLocation(NPC, -52.11, -10.7, 0.73, 2, 0)
end
