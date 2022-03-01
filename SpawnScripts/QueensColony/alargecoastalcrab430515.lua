--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430515.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430515.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:02 
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
	MovementLoopAddLocation(NPC, -118.55, -9.69, 20.93, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -110.55, -8.03, 20.3, 2, 0)
--	MovementLoopAddLocation(NPC, -98.1, -9.54, 21.93, 2, 0)
	MovementLoopAddLocation(NPC, -98.15, -9.49, 21.88, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -106.45, -8.91, 19.52, 2, 0)
--	MovementLoopAddLocation(NPC, -121.65, -9.61, 28.26, 2, 0)
	MovementLoopAddLocation(NPC, -121.60, -9.56, 28.31, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -106.09, -9.6, 36.25, 2, 0)
	MovementLoopAddLocation(NPC, -106.04, -9.55, 36.2, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -101.31, -9.87, 19.82, 2, 0)
	MovementLoopAddLocation(NPC, -101.36, -9.82, 19.87, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -98.58, -8.9, 23.95, 2, 0)
	MovementLoopAddLocation(NPC, -115.78, -7.26, 23.84, 2, 0)
--	MovementLoopAddLocation(NPC, -118.6, -9.74, 20.88, 2, 0)
end

