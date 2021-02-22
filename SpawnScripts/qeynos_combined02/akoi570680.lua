--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570680.lua
	Script Purpose	:	Waypoint Path for akoi570680.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:50 
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
	MovementLoopAddLocation(NPC, 789.16, -27.03, -394.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.94, -27.02, -387.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 791.55, -27.38, -384.82, 2, 0)
	MovementLoopAddLocation(NPC, 790.86, -27.12, -378.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.55, -26.66, -386.65, 2, 0)
	MovementLoopAddLocation(NPC, 789.35, -26.42, -395.03, 2, 0)
	MovementLoopAddLocation(NPC, 787.26, -26.27, -399.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.48, -26.93, -392.36, 2, 0)
	MovementLoopAddLocation(NPC, 791.08, -26.98, -387.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.91, -26.64, -391.15, 2, 0)
	MovementLoopAddLocation(NPC, 790.35, -26.07, -393.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 788.19, -25.95, -396.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.54, -26.45, -379.57, 2, 0)
	MovementLoopAddLocation(NPC, 789.37, -27.07, -375.24, 2, math.random(10, 20))
end

