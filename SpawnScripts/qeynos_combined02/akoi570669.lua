--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570669.lua
	Script Purpose	:	Waypoint Path for akoi570669.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:26 
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
	MovementLoopAddLocation(NPC, 761.99, -26.97, -412.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.92, -27, -410.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 762.06, -26.42, -404.75, 2, 0)
	MovementLoopAddLocation(NPC, 760.87, -26, -393.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.43, -26.48, -406.29, 2, 0)
	MovementLoopAddLocation(NPC, 759.58, -26.78, -408.47, 2, 0)
	MovementLoopAddLocation(NPC, 760.09, -26.96, -410.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.83, -27.06, -403.02, 2, 0)
	MovementLoopAddLocation(NPC, 761.91, -26.91, -385.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.87, -26.39, -393.27, 2, 0)
	MovementLoopAddLocation(NPC, 762.12, -26.44, -405.24, 2, 0)
	MovementLoopAddLocation(NPC, 761.76, -26.98, -409.84, 2, 0)
	MovementLoopAddLocation(NPC, 760.97, -27.05, -412.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 762.43, -26.6, -405.63, 2, 0)
	MovementLoopAddLocation(NPC, 762.95, -26.9, -393.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.89, -26.99, -387.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.02, -26.7, -390.41, 2, 0)
	MovementLoopAddLocation(NPC, 761.53, -26.9, -404.07, 2, 0)
end