--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430301.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430301.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:11 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, -78.55, -9.5, 114.1, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.77, -8.94, 116.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.06, -8.52, 112.14, 2, 0)
	MovementLoopAddLocation(NPC, -88.64, -7.66, 103, 2, 0)
	MovementLoopAddLocation(NPC, -90.86, -7.57, 92.35, 2, 0)
--	MovementLoopAddLocation(NPC, -96.65, -9.72, 87.8, 2, 0)
	MovementLoopAddLocation(NPC, -96.62, -9.71, 87.81, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -76.59, -8.45, 90.06, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -85.65, -9.47, 117.77, 2, 0)
	MovementLoopAddLocation(NPC, -85.69, -9.45, 117.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88, -8.62, 112.02, 2, 0)
	MovementLoopAddLocation(NPC, -90.73, -8.34, 107.5, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -78.51, -9.51, 114.08, 2, 0)
end
