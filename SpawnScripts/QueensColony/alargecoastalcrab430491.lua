--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430491.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430491.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:08 
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
	MovementLoopAddLocation(NPC, -86.75, -9.75, 118.94, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.26, -9.51, 116.72, 2, 0)
	MovementLoopAddLocation(NPC, -87.37, -9.14, 114.93, 2, 0)
	MovementLoopAddLocation(NPC, -90.23, -8.2, 102.45, 2, 0)
	MovementLoopAddLocation(NPC, -91.29, -7.67, 91.35, 2, 0)
	MovementLoopAddLocation(NPC, -93.15, -8.54, 86.49, 2, 0)
	MovementLoopAddLocation(NPC, -93.93, -8.88, 81.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.78, -8.07, 101.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.89, -7.59, 92.43, 2, 0)
--	MovementLoopAddLocation(NPC, -94.93, -9.2, 85.77, 2, 0)
	MovementLoopAddLocation(NPC, -94.91, -9.2, 85.85, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.76, -8.79, 88.87, 2, 0)
	MovementLoopAddLocation(NPC, -88.38, -7.15, 95.1, 2, 0)
	MovementLoopAddLocation(NPC, -86.78, -7.08, 99.96, 2, 0)
--	MovementLoopAddLocation(NPC, -86.73, -9.75, 119, 2, 0)
end


