--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430482.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430482.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:12 
	Script Notes	:	Locations collected from Live and modified to avoid spawn stacking
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
	MovementLoopAddLocation(NPC, -119.54, -9.68, 35.40, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -120.42, -8.33, 30.19, 2, 0)
	MovementLoopAddLocation(NPC, -110.34, -4.86, 25.17, 2, 0)
--	MovementLoopAddLocation(NPC, -106.23, -9.87, 18.64, 2, 0)
	MovementLoopAddLocation(NPC, -106.28, -9.83, 18.69, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -103.83, -7.47, 22.35, 2, 0)
--	MovementLoopAddLocation(NPC, -118.57, -9.65, 36.45, 2, 0)
	MovementLoopAddLocation(NPC, -118.52, -9.6, 36.4, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -103.67, -8.91, 20.6, 2, 0)
--	MovementLoopAddLocation(NPC, -102.38, -9.23, 20.63, 2, 0)
--	MovementLoopAddLocation(NPC, -104.4, -9.84, 18.97, 2, 0)
	MovementLoopAddLocation(NPC, -104.45, -9.79, 19.02, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -119.75, -9.73, 34.23, 2, 0)
	MovementLoopAddLocation(NPC, -119.7, -9.68, 34.18, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -106.23, -9.87, 18.64, 2, 0)
	MovementLoopAddLocation(NPC, -106.28, -9.83, 18.69, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -104.35, -6.68, 24.48, 2, 0)
	MovementLoopAddLocation(NPC, -107.9, -6.85, 31.74, 2, 0)
	MovementLoopAddLocation(NPC, -107.93, -8.61, 36.26, 2, 0)
--	MovementLoopAddLocation(NPC, -107.19, -9.66, 38.31, 2, 0)
	MovementLoopAddLocation(NPC, -107.14, -9.61, 38.26, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -107.73, -8.61, 35.78, 2, 0)
--	MovementLoopAddLocation(NPC, -104.4, -9.84, 18.97, 2, 0)
	MovementLoopAddLocation(NPC, -104.45, -9.79, 19.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.39, -8.08, 23.68, 2, 0)
--	MovementLoopAddLocation(NPC, -119.59, -9.73, 35.45, 2, 0)
end

