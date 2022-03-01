--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425441.lua
	Script Purpose	:	Waypoint Path for ashoalglider425441.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:30 
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
	MovementLoopAddLocation(NPC, -119.71, -11.85, 206.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.74, -13.38, 223.87, 2, 0)
	MovementLoopAddLocation(NPC, -141.86, -14.49, 224.33, 2, 0)
	MovementLoopAddLocation(NPC, -148.86, -14.75, 225.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.11, -14.18, 240.7, 2, 0)
	MovementLoopAddLocation(NPC, -117.56, -13.46, 245.09, 2, 0)
	MovementLoopAddLocation(NPC, -113.83, -13.22, 247.33, 2, 0)
	MovementLoopAddLocation(NPC, -109.18, -13.28, 244.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.11, -13.08, 239.12, 2, 0)
	MovementLoopAddLocation(NPC, -91.47, -13.87, 230.1, 2, 0)
	MovementLoopAddLocation(NPC, -87.5, -13.95, 225.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.81, -13.11, 228.88, 2, 0)
	MovementLoopAddLocation(NPC, -99.06, -12.94, 229.28, 2, 0)
	MovementLoopAddLocation(NPC, -110.73, -13.34, 241.06, 2, 0)
	MovementLoopAddLocation(NPC, -117.04, -13.28, 242.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.34, -13.21, 212.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.48, -11.91, 235.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.47, -13.16, 232.59, 2, 0)
	MovementLoopAddLocation(NPC, -125.43, -14.3, 221.15, 2, 0)
	MovementLoopAddLocation(NPC, -124.36, -14.5, 218.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.8, -13.22, 227.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.68, -13.18, 220.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -97.06, -12.99, 223.98, 2, 0)
	MovementLoopAddLocation(NPC, -95.35, -11.88, 223.93, 2, 0)
	MovementLoopAddLocation(NPC, -93.87, -11.86, 222.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.72, -11.95, 208.26, 2, 0)
	MovementLoopAddLocation(NPC, -113.39, -11.97, 208.04, 2, 0)
end

