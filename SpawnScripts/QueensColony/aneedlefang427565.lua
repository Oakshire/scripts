--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427565.lua
	Script Purpose	:	Waypoint Path for aneedlefang427565.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:36 
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
	MovementLoopAddLocation(NPC, -109.42, -13.75, 237.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.75, -13.8, 208.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.61, -13, 207.04, 2, 0)
	MovementLoopAddLocation(NPC, -78.96, -13.05, 197.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -87.63, -12.88, 206.59, 2, 0)
	MovementLoopAddLocation(NPC, -96.88, -13.09, 225.5, 2, 0)
	MovementLoopAddLocation(NPC, -96.32, -13.06, 231.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.97, -12.04, 228.17, 2, 0)
	MovementLoopAddLocation(NPC, -119.33, -12.43, 221.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.51, -13.15, 224.74, 2, 0)
	MovementLoopAddLocation(NPC, -97.06, -13.06, 225.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.53, -12.15, 231.13, 2, 0)
	MovementLoopAddLocation(NPC, -109.06, -11.24, 237.85, 2, 0)
	MovementLoopAddLocation(NPC, -105.18, -12.19, 238.41, 2, 0)
	MovementLoopAddLocation(NPC, -114.52, -12.51, 242.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.59, -12.52, 221.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.96, -13.51, 228.76, 2, 0)
end

