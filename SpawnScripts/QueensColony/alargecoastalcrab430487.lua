--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430487.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430487.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:28 
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
	MovementLoopAddLocation(NPC, -107.54, -6.46, 22.02, 2, math.random(10, 16))
--	MovementLoopAddLocation(NPC, -97.1, -9.9, 29.15, 2, 0)
        MovementLoopAddLocation(NPC, -97.15, -9.85, 29.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.39, -8.96, 21.68, 2, 0)
	MovementLoopAddLocation(NPC, -112.39, -8.05, 20.44, 2, 0)
	MovementLoopAddLocation(NPC, -115.6, -9.44, 20.76, 2, 0)
--	MovementLoopAddLocation(NPC, -116.38, -9.82, 19.96, 2, 0)
	MovementLoopAddLocation(NPC, -116.33, -9.77, 20.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -114.53, -8.93, 21.23, 2, 0)
	MovementLoopAddLocation(NPC, -101.77, -8.46, 21.91, 2, 0)
	MovementLoopAddLocation(NPC, -99.8, -8.46, 22.69, 2, 0)
--	MovementLoopAddLocation(NPC, -96.86, -10.24, 27.97, 2, 0)
	MovementLoopAddLocation(NPC, -96.96, -10.19, 27.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -108.51, -5.96, 29.11, 2, 0)
	MovementLoopAddLocation(NPC, -114.91, -8.15, 37.33, 2, 0)
--	MovementLoopAddLocation(NPC, -117.24, -9.62, 38.75, 2, 0)
	MovementLoopAddLocation(NPC, -117.14, -9.57, 38.73, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.27, -9.8, 30.37, 2, 0)
	MovementLoopAddLocation(NPC, -97.37, -9.75, 30.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -101.33, -8.93, 31.85, 2, 0)
--	MovementLoopAddLocation(NPC, -103.15, -9.61, 35.16, 2, 0)
	MovementLoopAddLocation(NPC, -103.2, -9.56, 35.11, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -115.95, -9.7, 20.14, 2, 0)
	MovementLoopAddLocation(NPC, -115.9, -9.65, 20.19, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -102.43, -9.58, 34.28, 2, 0)
	MovementLoopAddLocation(NPC, -102.38, -9.53, 34.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.16, -8.25, 28.86, 2, 0)
--	MovementLoopAddLocation(NPC, -96.91, -9.83, 27.96, 2, 0)
	MovementLoopAddLocation(NPC, -96.96, -9.78, 27.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -102.45, -8.18, 30.51, 2, 0)
	MovementLoopAddLocation(NPC, -110.2, -6.55, 33.46, 2, 0)
--	MovementLoopAddLocation(NPC, -113.39, -9.66, 42.43, 2, 0)
	MovementLoopAddLocation(NPC, -113.37, -9.61, 42.33, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -107.64, -6.46, 21.97, 2, 0)
end

