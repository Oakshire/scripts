--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570667.lua
	Script Purpose	:	Waypoint Path for akoi570667.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:22 
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
	MovementLoopAddLocation(NPC, 761.43, -26.97, -423.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 754.83, -26.82, -424.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 752.61, -26.89, -424.64, 2, 0)
	MovementLoopAddLocation(NPC, 748.62, -26.95, -425.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 752.24, -27.06, -424.55, 2, 0)
	MovementLoopAddLocation(NPC, 755.6, -26.99, -423.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.7, -26.99, -423.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 763.25, -27.02, -421.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 757.93, -27.36, -423.48, 2, 0)
	MovementLoopAddLocation(NPC, 752.74, -26.88, -424.62, 2, 0)
	MovementLoopAddLocation(NPC, 748.85, -26.9, -426.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 750.39, -26.8, -423.07, 2, math.random(10, 20))
end