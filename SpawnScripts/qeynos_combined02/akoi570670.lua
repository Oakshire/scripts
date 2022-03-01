--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570670.lua
	Script Purpose	:	Waypoint Path for akoi570670.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:28 
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
	MovementLoopAddLocation(NPC, 762.97, -27.05, -378.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 762.96, -27.03, -387.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 762.97, -27.03, -384.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.97, -27.08, -403.39, 2, 0)
	MovementLoopAddLocation(NPC, 760.97, -27.07, -406.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.82, -26.95, -404.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.91, -26.48, -401.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.47, -26.36, -405.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.92, -26.05, -402.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.07, -26.49, -405.88, 2, 0)
	MovementLoopAddLocation(NPC, 760.02, -27.06, -408.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.96, -27.06, -407.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.82, -26.5, -400.99, 2, 0)
	MovementLoopAddLocation(NPC, 760.01, -26.06, -396.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.68, -26.35, -393.21, 2, 0)
	MovementLoopAddLocation(NPC, 762, -26.97, -389.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.99, -27.37, -384.68, 2, 0)
end

