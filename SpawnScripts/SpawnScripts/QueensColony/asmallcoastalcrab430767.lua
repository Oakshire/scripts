--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430767.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430767.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:50 
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
	MovementLoopAddLocation(NPC, -28.12, -7.93, 242.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.18, -7.90, 240.48, 2, 0)
	MovementLoopAddLocation(NPC, -36.09, -7.99, 228.60, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.08, -8.18, 237.48, 2, 0)
	MovementLoopAddLocation(NPC, -31.91, -8.35, 239.49, 2, 0)
	MovementLoopAddLocation(NPC, -31.14, -8.32, 240.70, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.34, -8.24, 239.49, 2, 0)
	MovementLoopAddLocation(NPC, -28.74, -7.99, 232.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.73, -7.98, 232.08, 2, 0)
	MovementLoopAddLocation(NPC, -40.05, -9.26, 237.60, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.32, -7.97, 232.40, 2, 0)
	MovementLoopAddLocation(NPC, -32.42, -7.99, 231.88, 2, 0)
	MovementLoopAddLocation(NPC, -31.08, -7.99, 230.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.02, -7.85, 242.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.10, -7.88, 241.70, 2, math.random(10, 20))
end


