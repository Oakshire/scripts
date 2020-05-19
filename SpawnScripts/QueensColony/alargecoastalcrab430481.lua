--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430481.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430481.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:09 
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
	MovementLoopAddLocation(NPC, -119.70, -9.5, 34.18, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100, -8.27, 23.41, 2, 0)
	MovementLoopAddLocation(NPC, -99.4, -8.71, 22.48, 2, 0)
--	MovementLoopAddLocation(NPC, -106.23, -9.70, 18.64, 2, 0)
	MovementLoopAddLocation(NPC, -106.28, -9.65, 18.69, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -98.86, -8.89, 22.68, 2, 0)
--	MovementLoopAddLocation(NPC, -107.19, -9.56, 38.31, 2, 0)
	MovementLoopAddLocation(NPC, -107.14, -9.51, 38.26, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -99.87, -8.7, 29.98, 2, 0)
--	MovementLoopAddLocation(NPC, -104.4, -9.62, 18.97, 2, 0)
	MovementLoopAddLocation(NPC, -104.45, -9.57, 19.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -99.16, -9.57, 21.29, 2, 0)
	MovementLoopAddLocation(NPC, -99.18, -8.63, 24.96, 2, 0)
--	MovementLoopAddLocation(NPC, -106.95, -9.65, 37.16, 2, 0)
	MovementLoopAddLocation(NPC, -106.9, -9.6, 37.11, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -106.23, -9.62, 18.64, 2, 0)
	MovementLoopAddLocation(NPC, -106.28, -9.57, 18.69, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -119.75, -9.55, 34.23, 2, 0)
end

