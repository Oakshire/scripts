--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770142.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770142.lua
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
	MovementLoopAddLocation(NPC, -80.42, 4.38, -99.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -76.88, 4.36, -84.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -88.98, 4.4, -87.64, 2, 0)
	MovementLoopAddLocation(NPC, -92.61, 4.42, -87.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -97.95, 4.44, -93.3, 2, 0)
	MovementLoopAddLocation(NPC, -97.86, 4.44, -97.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -93.5, 4.42, -102.53, 2, 0)
	MovementLoopAddLocation(NPC, -83.24, 4.39, -103.34, 2, 0)
	MovementLoopAddLocation(NPC, -77.01, 4.34, -100.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -79.74, 4.37, -99, 2, 0)
	MovementLoopAddLocation(NPC, -84.63, 4.39, -91.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -75.25, 4.35, -88.15, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.26, 4.33, -95.17, 2, 0)
	MovementLoopAddLocation(NPC, -69.96, 4.66, -101.2, 2, 0)
	MovementLoopAddLocation(NPC, -62.76, 3.64, -121.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -57.44, 2.27, -124.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -62.53, 3.57, -121.45, 2, 0)
	MovementLoopAddLocation(NPC, -69.41, 4.73, -110.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -57.77, 2.87, -115.06, 2, 0)
	MovementLoopAddLocation(NPC, -50.56, 1.9, -122.14, 2, 0)
	MovementLoopAddLocation(NPC, -43.82, 1.99, -125.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -40.58, 2.18, -123.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -52.94, 2.24, -113.56, 2, 0)
	MovementLoopAddLocation(NPC, -59.43, 2.97, -114.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.81, 4.57, -110.94, 2, 0)
	MovementLoopAddLocation(NPC, -76.78, 4.31, -106.14, 2, 0)
end

