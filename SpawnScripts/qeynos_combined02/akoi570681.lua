--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570681.lua
	Script Purpose	:	Waypoint Path for akoi570681.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:54 
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
	MovementLoopAddLocation(NPC, 789.07, -28.04, -381.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 788.24, -26.93, -386.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.21, -26.07, -399.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.35, -26.19, -390.04, 2, 0)
	MovementLoopAddLocation(NPC, 788.73, -26.99, -375.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.04, -27.05, -378.24, 2, 0)
	MovementLoopAddLocation(NPC, 790.67, -26.94, -382.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.18, -26.97, -375.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 791.27, -26.32, -386.14, 2, 0)
	MovementLoopAddLocation(NPC, 791.14, -25.95, -394.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.61, -26.82, -376.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 791.55, -26.9, -373.83, 2, math.random(10, 20))
end

