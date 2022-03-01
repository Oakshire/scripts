--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430316.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430316.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:44:10 
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
	MovementLoopAddLocation(NPC, -86.04, -8.35, 39.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.14, -7.84, 40.01, 2, 0)
	MovementLoopAddLocation(NPC, -65.97, -8.4, 33.65, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -64.24, -9.77, 29.18, 2, 0)
	MovementLoopAddLocation(NPC, -64.3, -9.75, 29.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.93, -9.01, 34.72, 2, 0)
	MovementLoopAddLocation(NPC, -87.79, -9.08, 35.79, 2, 0)
--	MovementLoopAddLocation(NPC, -90.33, -9.74, 35.55, 2, 0)
	MovementLoopAddLocation(NPC, -90.21, -9.7, 35.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -66.34, -8.3, 33.51, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.99, -8.99, 32.71, 2, 0)
--	MovementLoopAddLocation(NPC, -87.65, -9.53, 32.97, 2, 0)
	MovementLoopAddLocation(NPC, -87.64, -9.51, 33.09, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.57, -8.46, 40.06, 2, 0)
	MovementLoopAddLocation(NPC, -90, -8.09, 47.18, 2, math.random(16, 24))
end


