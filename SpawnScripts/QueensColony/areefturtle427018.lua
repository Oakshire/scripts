--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427018.lua
	Script Purpose	:	Waypoint Path for areefturtle427018.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:08:17 
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
	MovementLoopAddLocation(NPC, -148.41, -13.66, 134.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.35, -13.11, 131.53, 2, 0)
	MovementLoopAddLocation(NPC, -139.24, -11.74, 127.17, 2, 0)
	MovementLoopAddLocation(NPC, -138.46, -11.83, 122.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.94, -12.28, 127.38, 2, 0)
	MovementLoopAddLocation(NPC, -132.26, -12.79, 130.83, 2, 0)
	MovementLoopAddLocation(NPC, -131.08, -12.83, 134.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.02, -12.56, 137.82, 2, 0)
	MovementLoopAddLocation(NPC, -112.76, -12.23, 160.3, 2, 0)
	MovementLoopAddLocation(NPC, -108.8, -11.8, 160.8, 2, 0)
	MovementLoopAddLocation(NPC, -106.17, -12, 166.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.61, -12.54, 154.72, 2, 0)
	MovementLoopAddLocation(NPC, -143.04, -14.84, 149.74, 2, 0)
	MovementLoopAddLocation(NPC, -147.57, -14.58, 153.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.66, -15.21, 168.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.93, -13.65, 140.95, 2, 0)
	MovementLoopAddLocation(NPC, -146.12, -13.75, 120.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.16, -13.41, 150.42, 2, 0)
	MovementLoopAddLocation(NPC, -138.97, -13.57, 159.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.97, -12.32, 153.21, 2, 0)
end

