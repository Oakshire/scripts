--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi133772195.lua
	Script Purpose	:	Waypoint Path for akoi133772195.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:39:04 
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
	MovementLoopAddLocation(NPC, 771.9, -26, -355.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 779.38, -26.02, -358.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.04, -26.49, -355.56, 2, 0)
	MovementLoopAddLocation(NPC, 774.13, -26.2, -354.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 771.14, -26.02, -352.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.91, -25.97, -358.56, 2, 0)
	MovementLoopAddLocation(NPC, 782.4, -26.01, -360.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.66, -26.07, -356.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.42, -26.12, -356.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 779.16, -26.04, -359.46, 2, math.random(10, 20))
end


