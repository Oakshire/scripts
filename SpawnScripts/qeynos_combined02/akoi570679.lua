--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570679.lua
	Script Purpose	:	Waypoint Path for akoi570679.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:47 
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
	MovementLoopAddLocation(NPC, 790.1, -26.99, -390.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.08, -27.2, -388.26, 2, 0)
	MovementLoopAddLocation(NPC, 789.55, -27.99, -383.42, 2, 0)
	MovementLoopAddLocation(NPC, 788.92, -28.04, -382.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.28, -28.02, -382.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.08, -27.72, -388.02, 2, 0)
	MovementLoopAddLocation(NPC, 789.55, -27.51, -392.22, 2, 0)
	MovementLoopAddLocation(NPC, 787.91, -26.94, -394.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.01, -26.91, -392.61, 2, 0)
	MovementLoopAddLocation(NPC, 789.16, -26.95, -388.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.39, -26.05, -398.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 788.2, -26.06, -397.11, 2, 0)
	MovementLoopAddLocation(NPC, 787.01, -27.14, -394.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 788.99, -27.33, -390.88, 2, 0)
	MovementLoopAddLocation(NPC, 789.74, -27.41, -387.31, 2, 0)
	MovementLoopAddLocation(NPC, 790.17, -27.99, -385.09, 2, math.random(10, 20))
end