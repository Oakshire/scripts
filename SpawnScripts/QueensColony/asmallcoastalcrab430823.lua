--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430823.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430823.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:27 
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
	MovementLoopAddLocation(NPC, -0.73, -8.27, 249.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.68, -7.71, 241.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.08, -7.80, 244.03, 2, 0)
	MovementLoopAddLocation(NPC, 8.57, -12.99, 257.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.02, -8.37, 247.99, 2, 0)
	MovementLoopAddLocation(NPC, 5.99, -9.14, 240.16, 2, 0)
	MovementLoopAddLocation(NPC, 8.55, -10.00, 237.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.02, -8.88, 238.07, 2, 0)
	MovementLoopAddLocation(NPC, 3.45, -8.55, 242.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.19, -8.64, 241.94, 2, 0)
	MovementLoopAddLocation(NPC, 7.35, -10.16, 240.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.07, -10.03, 240.57, 2, 0)
	MovementLoopAddLocation(NPC, 2.36, -8.29, 240.06, 2, 0)
	MovementLoopAddLocation(NPC, -1.61, -7.62, 240.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.73, -7.55, 242.63, 2, math.random(10, 20))
end

