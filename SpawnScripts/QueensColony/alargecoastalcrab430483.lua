--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430483.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430483.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:15 
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
	MovementLoopAddLocation(NPC, -118.52, -9.64, 36.4, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -119.26, -7.78, 28.98, 2, 0)
--	MovementLoopAddLocation(NPC, -107.13, -9.83, 38.31, 2, 0)
	MovementLoopAddLocation(NPC, -107.14, -9.78, 38.26, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -106.33, -9.92, 18.64, 2, 0)
	MovementLoopAddLocation(NPC, -106.38, -9.87, 18.69, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -100.93, -9.13, 21.27, 2, 0)
--	MovementLoopAddLocation(NPC, -119.73, -9.65, 22.82, 2, 0)
	MovementLoopAddLocation(NPC, -119.68, -9.6, 22.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -109.2, -5.59, 22.95, 2, 0)
--	MovementLoopAddLocation(NPC, -104.5, -9.91, 18.92, 2, 0)
	MovementLoopAddLocation(NPC, -104.48, -9.86, 19.02, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -101.9, -9.19, 20.86, 2, 0)
--	MovementLoopAddLocation(NPC, -98.67, -8.97, 22.75, 2, 0)
--	MovementLoopAddLocation(NPC, -106.85, -9.68, 37.13, 2, 0)
	MovementLoopAddLocation(NPC, -106.9, -9.63, 37.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -110.75, -6.14, 32.21, 2, 0)
	MovementLoopAddLocation(NPC, -117.99, -7.46, 31.51, 2, 0)
--	MovementLoopAddLocation(NPC, -118.57, -9.69, 36.45, 2, 0)
end


