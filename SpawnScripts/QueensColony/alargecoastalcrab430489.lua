--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430489.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430489.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:34 
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
	MovementLoopAddLocation(NPC, -113.1, -7.81, 36.83, 2, math.random(10, 16))
--      MovementLoopAddLocation(NPC, -96.86, -9.81, 27.94, 2, 0)
	MovementLoopAddLocation(NPC, -96.96, -9.76, 27.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -102.35, -8.62, 31.71, 2, 0)
--	MovementLoopAddLocation(NPC, -103.36, -9.53, 34.47, 2, 0)
	MovementLoopAddLocation(NPC, -103.41, -9.48, 34.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -107.5, -8.76, 36, 2, 0)
	MovementLoopAddLocation(NPC, -114.31, -8.2, 38.23, 2, 0)
--	MovementLoopAddLocation(NPC, -117.15, -9.84, 38.82, 2, 0)
	MovementLoopAddLocation(NPC, -117.14, -9.79, 38.73, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -117.52, -10.37, 19.85, 2, 0)
	MovementLoopAddLocation(NPC, -117.5, -10.32, 19.95, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -116.1, -9.27, 20.83, 2, 0)
	MovementLoopAddLocation(NPC, -104.1, -7.08, 23.87, 2, 0)
--	MovementLoopAddLocation(NPC, -113.32, -9.55, 42.28, 2, 0)
	MovementLoopAddLocation(NPC, -113.31, -9.5, 42.23, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -113.2, -7.81, 36.85, 2, 0)
end


