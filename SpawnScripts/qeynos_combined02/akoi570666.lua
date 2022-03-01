--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570666.lua
	Script Purpose	:	Waypoint Path for akoi570666.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:20 
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
	MovementLoopAddLocation(NPC, 746.75, -25.95, -424.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 757.57, -26.29, -423.17, 2, 0)
	MovementLoopAddLocation(NPC, 764.1, -26.69, -421.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 753.85, -27.04, -424.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 754.8, -26.93, -423.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 756.07, -27.03, -423.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.71, -26.91, -422.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.74, -26.9, -424.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 758.57, -26.96, -423.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 757.07, -26.74, -424.12, 2, 0)
	MovementLoopAddLocation(NPC, 755.54, -27.04, -423.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 755.56, -27, -424.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 748.97, -26.4, -425.03, 2, 0)
	MovementLoopAddLocation(NPC, 743.84, -26.04, -424.46, 2, 0)
	MovementLoopAddLocation(NPC, 742.53, -26.34, -422.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 744.83, -25.53, -423.37, 2, 0)
end