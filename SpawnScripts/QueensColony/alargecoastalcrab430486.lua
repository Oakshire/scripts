--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430486.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430486.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:25 
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
	MovementLoopAddLocation(NPC, -99.12, -9.68, 32.41, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -113.42, -9.61, 19.07, 2, 0)
	MovementLoopAddLocation(NPC, -113.37, -9.56, 19.12, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -104.1, -7.99, 30.87, 2, 0)
--	MovementLoopAddLocation(NPC, -100.22, -9.82, 32.51, 2, 0)
	MovementLoopAddLocation(NPC, -100.27, -9.77, 32.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -103.41, -7.1, 27.42, 2, 0)
	MovementLoopAddLocation(NPC, -101.7, -7.67, 23.34, 2, 0)
--	MovementLoopAddLocation(NPC, -103.43, -10.19, 19.57, 2, 0)
	MovementLoopAddLocation(NPC, -103.39, -10.14, 19.67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -102.17, -9.29, 20.62, 2, 0)
--	MovementLoopAddLocation(NPC, -99.07, -9.73, 32.46, 2, 0)
end

