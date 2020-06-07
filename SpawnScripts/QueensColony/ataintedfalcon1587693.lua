--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587693.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587693.lua
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
	MovementLoopAddLocation(NPC, 260.01, -1.55, 45.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.71, 1.5, 55.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.08, -0.92, 85.31, 2, 0)
	MovementLoopAddLocation(NPC, 258.42, -1.67, 92.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.26, -1.97, 96.27, 2, 0)
	MovementLoopAddLocation(NPC, 232.23, -2.23, 98.17, 2, 0)
	MovementLoopAddLocation(NPC, 231.62, -2.32, 104.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.06, -1.02, 90.73, 2, 0)
	MovementLoopAddLocation(NPC, 236.17, 0.43, 79.37, 2, 0)
	MovementLoopAddLocation(NPC, 239.83, 1.29, 66.51, 2, 0)
	MovementLoopAddLocation(NPC, 240.63, 1.72, 54.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.7, 1.77, 50.92, 2, 0)
	MovementLoopAddLocation(NPC, 251.76, 1.83, 42.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.87, 1.85, 24.69, 2, 0)
	MovementLoopAddLocation(NPC, 234.61, 1.87, 19.29, 2, math.random(10, 24))
end