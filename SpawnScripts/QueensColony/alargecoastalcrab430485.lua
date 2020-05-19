--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430485.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430485.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:22 
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
	MovementLoopAddLocation(NPC, -100.27, -9.46, 32.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -104.91, -8.29, 32.29, 2, 0)
--	MovementLoopAddLocation(NPC, -121.42, -9.55, 31.25, 2, 0)
	MovementLoopAddLocation(NPC, -121.38, -9.5, 31.17, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -96.17, -9.75, 23.13, 2, 0)
	MovementLoopAddLocation(NPC, -96.24, -9.7, 23.08, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -103.44, -9.55, 19.62, 2, 0)
	MovementLoopAddLocation(NPC, -103.39, -9.5, 19.67, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -99.02, -9.72, 32.39, 2, 0)
	MovementLoopAddLocation(NPC, -99.12, -9.67, 32.41, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -120.75, -9.67, 32.87, 2, 0)
	MovementLoopAddLocation(NPC, -120.70, -9.62, 32.82, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -100.22, -9.89, 32.56, 2, 0)
	MovementLoopAddLocation(NPC, -100.23, -9.84, 32.41, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -101.31, -9.55, 19.82, 2, 0)
	MovementLoopAddLocation(NPC, -101.36, -9.5, 19.87, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -121.78, -10.3, 31.17, 2, 0)
	MovementLoopAddLocation(NPC, -121.68, -10.35, 31.2, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -100.22, -9.49, 32.46, 2, 0)
end

