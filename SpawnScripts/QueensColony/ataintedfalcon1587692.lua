--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587692.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587692.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:07:59 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 260.6, -2.2, 65.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.28, -2.5, 85.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.54, -1.5, 85.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.82, 0.41, 75.3, 2, 0)
	MovementLoopAddLocation(NPC, 246.8, 1.92, 54.26, 2, 0)
	MovementLoopAddLocation(NPC, 242.54, 3.3, 47.19, 2, 0)
	MovementLoopAddLocation(NPC, 237.8, 4.5, 44.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.33, 3.12, 40.26, 2, 0)
	MovementLoopAddLocation(NPC, 226.43, 2.54, 12.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 224.74, 2.22, 16.31, 2, 0)
	MovementLoopAddLocation(NPC, 223.41, 1.95, 20.64, 2, 0)
	MovementLoopAddLocation(NPC, 223.7, 1.75, 25.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 235.38, 1.8, 32.45, 2, 0)
	MovementLoopAddLocation(NPC, 252.3, 1.85, 45.28, 2, math.random(10, 24))
end