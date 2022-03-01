--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570675.lua
	Script Purpose	:	Waypoint Path for akoi570675.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:38 
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
	MovementLoopAddLocation(NPC, 777.44, -26.97, -390.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.44, -26.95, -397.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.45, -26.91, -385.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.38, -27.36, -396.51, 2, 0)
	MovementLoopAddLocation(NPC, 778.44, -27.93, -400.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.88, -26.55, -413.55, 2, 0)
	MovementLoopAddLocation(NPC, 779.38, -25.97, -417.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.64, -26.45, -412.73, 2, 0)
	MovementLoopAddLocation(NPC, 778.33, -26.97, -386.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.53, -27.96, -399.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 779.71, -27.88, -401.09, 2, 0)
	MovementLoopAddLocation(NPC, 780.9, -26.81, -404.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.52, -27.02, -405.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.64, -27.19, -404.52, 2, 0)
	MovementLoopAddLocation(NPC, 777.41, -27.95, -402.79, 2, math.random(10, 20))
end
