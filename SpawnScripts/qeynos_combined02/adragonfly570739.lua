--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly570739.lua
	Script Purpose	:	Waypoint Path for adragonfly570739.lua
	Script Author	:	Rylec
	Script Date		:	02-27-2021 01:05:03 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 683, -10.5, -447.76, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 680.88, -11.5, -441.03, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 683.09, -12, -444, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 690.77, -14.5, -444.43, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 692.4, -9, -435.39, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 683.58, -14.7, -441.73, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 685.38, -13, -438.97, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 686.22, -12, -431.84, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 685.59, -9.3, -438.54, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 688.83, -13.2, -431.01, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 686.02, -10, -438.74, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 683.12, -11, -447.92, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 681.33, -13, -440.82, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 683.39, -14, -443.13, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 690.2, -13, -443.86, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 688.95, -13.5, -447.55, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 690.1, -10, -435.25, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 683.74, -13.6, -441.61, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 685.87, -13, -438.45, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 686.74, -12, -431.95, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 686.63, -11.4, -437.1, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 688.61, -11, -430.93, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 686.53, -12, -438.54, 7, math.random(5, 8))
end