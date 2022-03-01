--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430479.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430479.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:12:57 
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
	MovementLoopAddLocation(NPC, -118.68, -9.82, 20.86, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -119.13, -8.13, 26.13, 2, 0)
--	MovementLoopAddLocation(NPC, -121.68, -9.55, 29.51, 2, 0)
	MovementLoopAddLocation(NPC, -121.63, -9.5, 29.56, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -117.23, -7.3, 31.29, 2, 0)
	MovementLoopAddLocation(NPC, -114.25, -6.25, 24.12, 2, 0)
	MovementLoopAddLocation(NPC, -114.08, -8.75, 20.26, 2, 0)
--	MovementLoopAddLocation(NPC, -118.6, -9.34, 20.88, 2, 0)
	MovementLoopAddLocation(NPC, -118.55, -9.28, 20.93, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -105.04, -9.71, 35.35, 2, 0)
	MovementLoopAddLocation(NPC, -105.09, -9.76, 35.30, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -104.47, -8.94, 33.56, 2, 0)
--	MovementLoopAddLocation(NPC, -121.65, -9.87, 28.28, 2, 0)
	MovementLoopAddLocation(NPC, -121.6, -9.82, 28.23, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.19, -9.77, 21.68, 2, 0)
	MovementLoopAddLocation(NPC, -97.24, -9.82, 21.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -108.71, -8.34, 19.96, 2, 0)
	MovementLoopAddLocation(NPC, -112.95, -8.26, 20.26, 2, 0)
	MovementLoopAddLocation(NPC, -115.43, -9.31, 21.33, 2, 0)
--	MovementLoopAddLocation(NPC, -118.68, -9.92, 20.75, 2, 0)
end

