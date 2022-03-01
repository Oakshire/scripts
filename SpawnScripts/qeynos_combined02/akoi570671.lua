--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570671.lua
	Script Purpose	:	Waypoint Path for akoi570671.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:30 
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
	MovementLoopAddLocation(NPC, 762.91, -26.95, -392.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.88, -26.74, -387.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.94, -25.93, -392.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.13, -26.31, -387.2, 2, 0)
	MovementLoopAddLocation(NPC, 761.84, -26.87, -383.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.23, -26.69, -388.79, 2, 0)
	MovementLoopAddLocation(NPC, 760.94, -26.02, -391.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.32, -26.51, -402.59, 2, 0)
	MovementLoopAddLocation(NPC, 761.99, -27, -405.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.92, -26, -400.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.99, -26.01, -394.7, 2, math.random(10, 20))
end

