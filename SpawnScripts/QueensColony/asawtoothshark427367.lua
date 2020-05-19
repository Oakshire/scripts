--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427367.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427367.lua
	Script Author	:	Rylec
	Script Date	:	11-11-2019 06:43:37 
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
	MovementLoopAddLocation(NPC, -95.95, -11.77, 145.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.23, -11.82, 143.67, 2, 0)
	MovementLoopAddLocation(NPC, -90.51, -11.09, 139.02, 2, 0)
	MovementLoopAddLocation(NPC, -80.45, -11.22, 136.11, 2, 0)
	MovementLoopAddLocation(NPC, -79.17, -11.29, 130.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.49, -11.18, 135.72, 2, 0)
	MovementLoopAddLocation(NPC, -102.27, -10.44, 142.64, 2, 0)
	MovementLoopAddLocation(NPC, -127, -11.31, 141.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.47, -12.43, 109.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.89, -12.23, 127.83, 2, 0)
	MovementLoopAddLocation(NPC, -110.62, -11.75, 149.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.47, -12, 157.44, 2, 0)
	MovementLoopAddLocation(NPC, -134.24, -11.75, 156.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.54, -12.18, 151.34, 2, 0)
	MovementLoopAddLocation(NPC, -121.62, -11.84, 142.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.32, -12.26, 144.2, 2, 0)
	MovementLoopAddLocation(NPC, -132, -12.33, 144.59, 2, 0)
	MovementLoopAddLocation(NPC, -137.98, -13.25, 148.75, 2, 0)
	MovementLoopAddLocation(NPC, -141.27, -14.79, 152.83, 2, 0)
	MovementLoopAddLocation(NPC, -146.64, -14.81, 156.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.68, -13.84, 156.55, 2, 0)
	MovementLoopAddLocation(NPC, -133.08, -13.1, 158.4, 2, 0)
	MovementLoopAddLocation(NPC, -126.04, -12.34, 160.11, 2, 0)
	MovementLoopAddLocation(NPC, -108.63, -11.77, 160.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.7, -12.68, 182.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108, -12.35, 175.8, 2, 0)
	MovementLoopAddLocation(NPC, -101.65, -12.02, 157.14, 2, 0)
end

