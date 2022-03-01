--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425453.lua
	Script Purpose	:	Waypoint Path for ashoalglider425453.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:18:20 
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
	MovementLoopAddLocation(NPC, -137.69, -13.28, 183.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.68, -13.61, 181.83, 2, 0)
	MovementLoopAddLocation(NPC, -115.87, -13.43, 183.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.53, -12.06, 177.41, 2, 0)
	MovementLoopAddLocation(NPC, -99.52, -11.94, 167.69, 2, 0)
	MovementLoopAddLocation(NPC, -88.93, -11.49, 156.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.89, -11.5, 145.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.7, -10.8, 137.04, 2, 0)
	MovementLoopAddLocation(NPC, -126.39, -10.8, 112.1, 2, 0)
	MovementLoopAddLocation(NPC, -130.91, -11.77, 106.85, 2, 0)
	MovementLoopAddLocation(NPC, -135.77, -11.73, 106.36, 2, 0)
	MovementLoopAddLocation(NPC, -143.47, -11.9, 91.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.62, -12.29, 86.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.59, -12.5, 105.69, 2, 0)
	MovementLoopAddLocation(NPC, -131.68, -12.41, 110.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.18, -11.88, 111.76, 2, 0)
	MovementLoopAddLocation(NPC, -138.43, -12.01, 127.74, 2, 0)
	MovementLoopAddLocation(NPC, -143.18, -12.27, 131.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.36, -12.5, 145.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.15, -13.51, 159.33, 2, 0)
	MovementLoopAddLocation(NPC, -136.21, -13.21, 182.47, 2, 0)
	MovementLoopAddLocation(NPC, -137.44, -13.25, 183.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.25, -13.61, 192.55, 2, 0)
	MovementLoopAddLocation(NPC, -141.62, -13.89, 202.39, 2, 0)
end


