--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770054.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770054.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -43.95, 2.09, -121.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -64.69, 4.26, -102.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -74.13, 4.35, -91.04, 2, 0)
	MovementLoopAddLocation(NPC, -78.79, 4.37, -88.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -80.08, 4.37, -96.97, 2, 0)
	MovementLoopAddLocation(NPC, -77.78, 4.31, -108.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -85.47, 4.4, -103.16, 2, 0)
	MovementLoopAddLocation(NPC, -93.23, 4.42, -102.02, 2, 0)
	MovementLoopAddLocation(NPC, -102.63, 4.46, -95.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -95.18, 4.43, -90.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.97, 4.4, -93.15, 2, 0)
	MovementLoopAddLocation(NPC, -73.13, 4.35, -87.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.84, 4.31, -96.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -66.86, 4.51, -99.14, 2, 0)
	MovementLoopAddLocation(NPC, -49.27, 2.21, -116.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -42.63, 2.13, -121.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -54.05, 1.98, -126.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -50.88, 1.9, -125.1, 2, 0)
	MovementLoopAddLocation(NPC, -44.99, 1.9, -125.13, 2, 0)
	MovementLoopAddLocation(NPC, -39.89, 2.18, -123.11, 2, math.random(14, 25))
end

