--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770140.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770140.lua
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
	MovementLoopAddLocation(NPC, -62.98, 3.7, -118.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.59, 4.49, -120.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -56.88, 2.65, -113.46, 2, 0)
	MovementLoopAddLocation(NPC, -51.89, 2.22, -114.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -49.26, 2.18, -117.21, 2, 0)
	MovementLoopAddLocation(NPC, -39.1, 2.17, -122.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -42.43, 2.09, -125.2, 2, 0)
	MovementLoopAddLocation(NPC, -49.08, 1.9, -123.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -53.3, 2.18, -120.35, 2, 0)
	MovementLoopAddLocation(NPC, -57.23, 2.8, -114.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -68.16, 4.38, -96.01, 2, 0)
	MovementLoopAddLocation(NPC, -77.03, 4.36, -86.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -80.06, 4.37, -94.89, 2, 0)
	MovementLoopAddLocation(NPC, -76.82, 4.31, -113.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -67.41, 4.81, -110.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.7, 4.57, -102.1, 2, 0)
	MovementLoopAddLocation(NPC, -73.25, 4.35, -90.1, 2, 0)
	MovementLoopAddLocation(NPC, -82.59, 4.59, -83.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -85.22, 4.39, -87.77, 2, 0)
	MovementLoopAddLocation(NPC, -87.52, 4.4, -101.5, 2, math.random(14, 25))
end

