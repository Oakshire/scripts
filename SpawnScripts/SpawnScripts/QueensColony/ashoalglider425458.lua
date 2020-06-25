--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425458.lua
	Script Purpose	:	Waypoint Path for ashoalglider425458.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:38 
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
	MovementLoopAddLocation(NPC, -137.94, -12.44, 27.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.81, -12.71, 28.54, 2, 0)
	MovementLoopAddLocation(NPC, -146.94, -13.38, 15.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.02, -13.49, 7.96, 2, 0)
	MovementLoopAddLocation(NPC, -137.27, -12.17, 6.55, 2, 0)
	MovementLoopAddLocation(NPC, -131.39, -11.59, 4.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.66, -12.34, 37.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.72, -10.5, 44.25, 2, 0)
	MovementLoopAddLocation(NPC, -121.04, -10.5, 48.63, 2, 0)
	MovementLoopAddLocation(NPC, -116.3, -11.42, 55.75, 2, 0)
	MovementLoopAddLocation(NPC, -111.26, -11.55, 58.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.59, -10.5, 46.85, 2, 0)
	MovementLoopAddLocation(NPC, -135.87, -10.5, 37.93, 2, 0)
	MovementLoopAddLocation(NPC, -137.85, -12.5, 23.34, 2, 0)
	MovementLoopAddLocation(NPC, -132.6, -12.42, 16.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.35, -12.2, 8.64, 2, 0)
	MovementLoopAddLocation(NPC, -136.64, -12.45, 8.09, 2, 0)
	MovementLoopAddLocation(NPC, -144.84, -13.61, 8.11, 2, 0)
	MovementLoopAddLocation(NPC, -149.03, -13.54, 5.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.84, -13.35, 2.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.18, -12.75, 7.02, 2, 0)
	MovementLoopAddLocation(NPC, -145.25, -12.64, 11.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.4, -11.23, 22.93, 2, 0)
	MovementLoopAddLocation(NPC, -128.75, -10.5, 29.87, 2, 0)
	MovementLoopAddLocation(NPC, -119.37, -10.5, 42.9, 2, 0)
	MovementLoopAddLocation(NPC, -108.8, -11.31, 50.41, 2, 0)
	MovementLoopAddLocation(NPC, -104.7, -11.14, 48.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.24, -10.55, 48.25, 2, 0)
	MovementLoopAddLocation(NPC, -129.52, -10.5, 42.66, 2, 0)
	MovementLoopAddLocation(NPC, -135.65, -11.74, 37.12, 2, 0)
end

