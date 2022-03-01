--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430305.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430305.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:25 
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
	MovementLoopAddLocation(NPC, -91.78, -8.46, 62.13, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.82, -8.47, 69.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.39, -8.52, 60.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.35, -8.94, 57.44, 2, 0)
--	MovementLoopAddLocation(NPC, -97.18, -9.76, 55.45, 2, 0)
	MovementLoopAddLocation(NPC, -97.13, -9.76, 55.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.69, -9.02, 57.16, 2, 0)
--	MovementLoopAddLocation(NPC, -97.34, -9.72, 59.3, 2, 0)
	MovementLoopAddLocation(NPC, -97.3, -9.7, 59.29, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.31, -8.91, 59.03, 2, 0)
	MovementLoopAddLocation(NPC, -55.84, -8.39, 74.65, 2, 0)
	MovementLoopAddLocation(NPC, -53.49, -8.83, 75.89, 2, 0)
--	MovementLoopAddLocation(NPC, -51.73, -9.26, 76.24, 2, 0)
	MovementLoopAddLocation(NPC, -51.83, -9.23, 76.25, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.14, -9.77, 76.36, 2, 0)
	MovementLoopAddLocation(NPC, -97.09, -9.76, 76.26, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.58, -8.94, 68.58, 2, 0)
	MovementLoopAddLocation(NPC, -90.06, -8.09, 63.56, 2, math.random(16, 24))
end


