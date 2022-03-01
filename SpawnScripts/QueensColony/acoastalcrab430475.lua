--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430475.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430475.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:16 
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
	MovementLoopAddLocation(NPC, -59.50, -9.98, 89.69, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.83, -8.83, 55.76, 2, 0)
--	MovementLoopAddLocation(NPC, -96.79, -9.8, 50.97, 2, 0)
	MovementLoopAddLocation(NPC, -96.68, -9.8, 51.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.06, -8.25, 52.16, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.95, -9.09, 56.09, 2, 0)
	MovementLoopAddLocation(NPC, -97.12, -9.52, 65.46, 2, 0)
	MovementLoopAddLocation(NPC, -96.3, -9.37, 72.1, 2, 0)
	MovementLoopAddLocation(NPC, -94.71, -9, 73.72, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.85, -7.84, 53.83, 2, 0)
	MovementLoopAddLocation(NPC, -92.06, -8.53, 42.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.05, -8.46, 65.47, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.64, -8.18, 56.82, 2, 0)
--	MovementLoopAddLocation(NPC, -94.43, -9.06, 52.04, 2, 0)
	MovementLoopAddLocation(NPC, -94.48, -9.06, 52.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.38, -9.63, 62.81, 2, 0)
	MovementLoopAddLocation(NPC, -96.49, -9.46, 73.06, 2, 0)
--	MovementLoopAddLocation(NPC, -94.62, -9, 74.85, 2, 0)
	MovementLoopAddLocation(NPC, -94.5, -8.97, 74.96, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.02, -8.29, 69.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -62.54, -7.76, 84.37, 2, 0)
	MovementLoopAddLocation(NPC, -61.87, -8.63, 87.73, 2, 0)
--	MovementLoopAddLocation(NPC, -59.45, -9.99, 89.74, 2, 0)
end


