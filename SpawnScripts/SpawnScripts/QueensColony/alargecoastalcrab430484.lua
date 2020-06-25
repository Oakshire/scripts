--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430484.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430484.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:18 
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
	MovementLoopAddLocation(NPC, -99.12, -9.67, 32.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -107.61, -8.7, 35.93, 2, 0)
--	MovementLoopAddLocation(NPC, -121.73, -9.71, 31.25, 2, 0)
	MovementLoopAddLocation(NPC, -121.68, -9.66, 31.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -109.99, -4.98, 24.56, 2, 0)
--	MovementLoopAddLocation(NPC, -103.34, -9.92, 19.62, 2, 0)
	MovementLoopAddLocation(NPC, -103.39, -9.87, 19.67, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -120.8, -9.74, 32.77, 2, 0)
	MovementLoopAddLocation(NPC, -120.7, -9.69, 32.82, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -110.13, -7.86, 36.67, 2, 0)
--	MovementLoopAddLocation(NPC, -96.92, -9.8, 25.22, 2, 0)
	MovementLoopAddLocation(NPC, -97.02, -9.75, 25.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.7, -7.93, 24.21, 2, 0)
--	MovementLoopAddLocation(NPC, -101.33, -9.81, 19.82, 2, 0)
	MovementLoopAddLocation(NPC, -101.36, -9.76, 19.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -105.38, -7.47, 22.11, 2, 0)
--	MovementLoopAddLocation(NPC, -113.38, -9.59, 18.79, 2, 0)
	MovementLoopAddLocation(NPC, -113.33, -9.54, 18.84, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -96.19, -9.59, 23.1, 2, 0)
	MovementLoopAddLocation(NPC, -96.24, -9.54, 23.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -99.52, -8.49, 23.66, 2, 0)
--	MovementLoopAddLocation(NPC, -102.36, -9.8, 19.86, 2, 0)
	MovementLoopAddLocation(NPC, -102.46, -9.75, 19.84, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -113.42, -9.46, 19.02, 2, 0)
	MovementLoopAddLocation(NPC, -113.37, -9.41, 19.12, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -99.07, -9.72, 32.46, 2, 0)
end
