--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570674.lua
	Script Purpose	:	Waypoint Path for akoi570674.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:36 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 775.55, -28.03, -402.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.43, -27.9, -405.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.43, -27.97, -403.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.44, -27.27, -396.44, 2, 0)
	MovementLoopAddLocation(NPC, 775.4, -27, -390.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.41, -27.9, -409.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.57, -27.72, -411.12, 2, 0)
	MovementLoopAddLocation(NPC, 779.28, -26.88, -414.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.86, -26.45, -416.06, 2, 0)
	MovementLoopAddLocation(NPC, 779.43, -25.99, -418.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.63, -26.43, -413.32, 2, 0)
	MovementLoopAddLocation(NPC, 776, -27.65, -407.27, 2, 0)
end
