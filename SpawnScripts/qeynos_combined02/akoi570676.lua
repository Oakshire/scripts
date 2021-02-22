--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570676.lua
	Script Purpose	:	Waypoint Path for akoi570676.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:41 
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
	MovementLoopAddLocation(NPC, 779.41, -26.96, -394.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.37, -27.01, -399.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 778.84, -27, -406.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.34, -27.19, -404.34, 2, 0)
	MovementLoopAddLocation(NPC, 776.42, -27.96, -402.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.33, -28.03, -399.73, 2, 0)
	MovementLoopAddLocation(NPC, 775.33, -26.91, -388.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.4, -26.95, -401.26, 2, math.random(10, 20))
end


