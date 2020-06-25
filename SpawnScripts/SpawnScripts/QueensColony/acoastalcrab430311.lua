--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430311.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430311.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:46 
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
	MovementLoopAddLocation(NPC, -63.62, -8.29, 40.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.95, -7.69, 47.28, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.75, -8.52, 35.62, 2, 0)
--	MovementLoopAddLocation(NPC, -82.62, -8.98, 32.53, 2, 0)
	MovementLoopAddLocation(NPC, -82.44, -8.98, 32.49, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -77.72, -8.76, 31.41, 2, 0)
	MovementLoopAddLocation(NPC, -72.82, -8.82, 28.85, 2, 0)
--	MovementLoopAddLocation(NPC, -71.59, -9.12, 27.44, 2, 0)
	MovementLoopAddLocation(NPC, -71.58, -9.07, 27.45, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -70.37, -8.87, 28.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.36, -8.24, 32.51, 2, 0)
	MovementLoopAddLocation(NPC, -64.12, -8.04, 43.47, 2, 0)
	MovementLoopAddLocation(NPC, -61.88, -8.15, 46.24, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -61.82, -9.54, 33.3, 2, 0)
	MovementLoopAddLocation(NPC, -61.81, -9.53, 33.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -61.89, -8.94, 35.62, 2, 0)
	MovementLoopAddLocation(NPC, -59.69, -8.76, 40.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.92, -8.46, 38.41, 2, math.random(16, 24))
end


