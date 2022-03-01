--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770055.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770055.lua
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
	MovementLoopAddLocation(NPC, -58.03, 2.35, -128.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -57.5, 2.32, -123.64, 2, 0)
	MovementLoopAddLocation(NPC, -65.62, 4.36, -119.33, 2, 0)
	MovementLoopAddLocation(NPC, -80.82, 4.38, -102.66, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -76.15, 4.31, -106.1, 2, 0)
	MovementLoopAddLocation(NPC, -54.58, 2.34, -112.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.47, 4.47, -101.34, 2, 0)
	MovementLoopAddLocation(NPC, -78.31, 4.37, -100.01, 2, 0)
	MovementLoopAddLocation(NPC, -82.4, 4.38, -95.95, 2, 0)
	MovementLoopAddLocation(NPC, -88.02, 4.4, -93.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -94.45, 4.43, -89.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -88.16, 4.4, -94.36, 2, 0)
	MovementLoopAddLocation(NPC, -83.25, 4.39, -95.82, 2, 0)
	MovementLoopAddLocation(NPC, -79.88, 4.37, -98.74, 2, 0)
	MovementLoopAddLocation(NPC, -75.93, 4.3, -105.74, 2, 0)
	MovementLoopAddLocation(NPC, -62.94, 3.78, -117.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -76.53, 4.31, -105.9, 2, 0)
	MovementLoopAddLocation(NPC, -80.93, 4.38, -97.64, 2, 0)
	MovementLoopAddLocation(NPC, -87.46, 4.4, -91.54, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.13, 4.4, -100.46, 2, 0)
	MovementLoopAddLocation(NPC, -89.3, 4.41, -105.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -85.77, 4.39, -95.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -81.75, 4.38, -96.56, 2, 0)
	MovementLoopAddLocation(NPC, -74.79, 4.3, -107.41, 2, 0)
	MovementLoopAddLocation(NPC, -61.63, 3.32, -121.56, 2, 0)
	MovementLoopAddLocation(NPC, -55.99, 2.15, -125.08, 2, 0)
	MovementLoopAddLocation(NPC, -53.64, 1.95, -126.59, 2, math.random(14, 25))
end

