--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427366.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427366.lua
	Script Author	:	Rylec
	Script Date	:	11-11-2019 06:43:31 
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
	MovementLoopAddLocation(NPC, -104.44, -11.65, 97.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.3, -10.46, 95.34, 2, 0)
	MovementLoopAddLocation(NPC, -119.83, -10.33, 91.11, 2, 0)
	MovementLoopAddLocation(NPC, -126.02, -10.68, 89.71, 2, 0)
	MovementLoopAddLocation(NPC, -135.21, -10.45, 135.61, 2, 0)
	MovementLoopAddLocation(NPC, -140.76, -11.84, 147.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.18, -12.38, 158.2, 2, 0)
	MovementLoopAddLocation(NPC, -152.33, -13.16, 183.61, 2, 0)
	MovementLoopAddLocation(NPC, -148.39, -13.6, 190.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -149.75, -14.28, 184.92, 2, 0)
	MovementLoopAddLocation(NPC, -148.31, -14.61, 177.17, 2, 0)
	MovementLoopAddLocation(NPC, -137.66, -14.71, 161.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.28, -12.99, 170.99, 2, 0)
	MovementLoopAddLocation(NPC, -125.93, -12.24, 171.58, 2, 0)
	MovementLoopAddLocation(NPC, -120.22, -11.92, 168.74, 2, 0)
	MovementLoopAddLocation(NPC, -102.65, -11.77, 157.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.1, -11.29, 159.26, 2, 0)
	MovementLoopAddLocation(NPC, -124.23, -11.82, 164.03, 2, 0)
	MovementLoopAddLocation(NPC, -129.68, -11.72, 163, 12, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.68, -12.44, 144.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.35, -11.99, 137.15, 2, 0)
	MovementLoopAddLocation(NPC, -126.04, -11.8, 126.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.96, -11.78, 115.73, 2, math.random(10, 20))
end

