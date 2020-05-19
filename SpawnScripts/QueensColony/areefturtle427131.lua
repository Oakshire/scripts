--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427131.lua
	Script Purpose	:	Waypoint Path for areefturtle427131.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:08:04 
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
	MovementLoopAddLocation(NPC, -103.58, -11.79, 130.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.97, -11.98, 128.04, 2, 0)
	MovementLoopAddLocation(NPC, -121.12, -10.53, 108.96, 2, 0)
	MovementLoopAddLocation(NPC, -135.73, -11.59, 108.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.92, -10.55, 114.75, 2, 0)
	MovementLoopAddLocation(NPC, -110.9, -10.62, 115.85, 2, 0)
	MovementLoopAddLocation(NPC, -102.25, -11.91, 119.5, 2, 0)
	MovementLoopAddLocation(NPC, -97.49, -11.81, 122.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.36, -11.37, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, -83.45, -11.7, 134.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.38, -11.26, 156.12, 2, 0)
	MovementLoopAddLocation(NPC, -115.31, -11.58, 164.33, 2, 0)
	MovementLoopAddLocation(NPC, -120.31, -13.2, 172.57, 2, 0)
	MovementLoopAddLocation(NPC, -121.18, -13.5, 174.81, 2, 0)
	MovementLoopAddLocation(NPC, -125.97, -14.7, 181.77, 2, 0)
	MovementLoopAddLocation(NPC, -125.57, -14.82, 187.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.18, -12.82, 179.09, 2, 0)
	MovementLoopAddLocation(NPC, -112.34, -12.21, 177.15, 2, 0)
	MovementLoopAddLocation(NPC, -94.24, -11.74, 168.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.74, -11.69, 138.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.03, -11.78, 153.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.17, -11.85, 164.56, 2, math.random(10, 20))
end

