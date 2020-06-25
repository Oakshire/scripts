--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427592.lua
	Script Purpose	:	Waypoint Path for aneedlefang427592.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:08 
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
	MovementLoopAddLocation(NPC, 49.09, -12.07, -76.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.1, -11.98, -70.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.27, -11.75, -53, 2, 0)
	MovementLoopAddLocation(NPC, 77.16, -11.98, -44.09, 2, 0)
	MovementLoopAddLocation(NPC, 79.47, -12.72, -36.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.27, -11.69, -46.14, 2, 0)
	MovementLoopAddLocation(NPC, 71.96, -11.63, -51.73, 2, 0)
	MovementLoopAddLocation(NPC, 69.51, -11.75, -57.56, 2, 0)
	MovementLoopAddLocation(NPC, 67.6, -11.97, -66.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.56, -11.03, -81.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.86, -12.12, -72.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.14, -11.15, -83.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.29, -10.41, -80.64, 2, 0)
	MovementLoopAddLocation(NPC, 68.18, -10.52, -74.07, 2, 0)
	MovementLoopAddLocation(NPC, 76.8, -10.32, -62.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.84, -11.75, -64.88, 2, 0)
	MovementLoopAddLocation(NPC, 66.27, -12.18, -68.83, 2, math.random(10, 20))
end


