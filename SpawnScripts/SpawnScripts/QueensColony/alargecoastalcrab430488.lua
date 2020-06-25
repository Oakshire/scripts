--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430488.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430488.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:30 
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
        MovementLoopAddLocation(NPC, -113.64, -6.4, 29, 2, math.random(10, 16))
--	MovementLoopAddLocation(NPC, -97.32, -9.93, 30.41, 2, 0)	
        MovementLoopAddLocation(NPC, -97.37, -9.88, 30.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -116.25, -8.31, 35.84, 2, 0)
--	MovementLoopAddLocation(NPC, -115.49, -10.22, 39.83, 2, 0)
	MovementLoopAddLocation(NPC, -115.54, -10.17, 39.76, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -119.78, -7.94, 30.86, 2, 0)
--	MovementLoopAddLocation(NPC, -117.55, -10.53, 19.83, 2, 0)
	MovementLoopAddLocation(NPC, -117.5, -10.48, 19.88, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -108.84, -7.14, 21.09, 2, 0)
--	MovementLoopAddLocation(NPC, -96.91, -9.77, 27.94, 2, 0)
	MovementLoopAddLocation(NPC, -96.96, -9.72, 27.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -102.64, -8.77, 32.27, 2, 0)
--	MovementLoopAddLocation(NPC, -103.37, -9.97, 35.4, 2, 0)
	MovementLoopAddLocation(NPC, -103.30, -9.94, 35.29, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.12, -9.59, 29.3, 2, 0)
	MovementLoopAddLocation(NPC, -97.15, -9.54, 29.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.46, -8.05, 23.7, 2, 0)
	MovementLoopAddLocation(NPC, -105.46, -8.98, 19.82, 2, 0)
--	MovementLoopAddLocation(NPC, -115.89, -9.62, 20.14, 2, 0)
	MovementLoopAddLocation(NPC, -115.9, -9.57, 20.19, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -113.35, -9.65, 42.38, 2, 0)
	MovementLoopAddLocation(NPC, -113.37, -9.6, 42.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -117.97, -8.27, 34.03, 2, 0)
--	MovementLoopAddLocation(NPC, -116.28, -9.65, 19.91, 2, 0)
	MovementLoopAddLocation(NPC, -116.33, -9.6, 20.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -118.96, -7.98, 26.37, 2, 0)
--	MovementLoopAddLocation(NPC, -117.19, -9.83, 38.78, 2, 0)
	MovementLoopAddLocation(NPC, -117.14, -9.78, 38.73, 2, math.random(16, 24))
end

