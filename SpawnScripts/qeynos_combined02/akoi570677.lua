--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570677.lua
	Script Purpose	:	Waypoint Path for akoi570677.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:43 
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
	MovementLoopAddLocation(NPC, 779.45, -26.94, -402.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.63, -26.97, -406.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.56, -27, -387.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 781.21, -26.94, -393.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.7, -27.01, -393.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.17, -26.95, -382.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.97, -26.91, -390.53, 2, 0)
	MovementLoopAddLocation(NPC, 777.32, -26.96, -402.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.8, -27.04, -388.85, 2, math.random(10, 20))
end
