--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570668.lua
	Script Purpose	:	Waypoint Path for akoi570668.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:24 
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
	MovementLoopAddLocation(NPC, 756.78, -26.97, -424.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 763.07, -26.79, -422.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 757.58, -26.89, -424.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 748.02, -26.94, -425.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 751.79, -26.98, -426.02, 2, 0)
	MovementLoopAddLocation(NPC, 757.03, -26.89, -425.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 749, -26, -424.64, 2, 0)
	MovementLoopAddLocation(NPC, 743.86, -25.99, -425, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 749.28, -26.68, -425.04, 2, 0)
	MovementLoopAddLocation(NPC, 751.58, -26.96, -425.24, 2, 0)
end
