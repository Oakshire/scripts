--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570672.lua
	Script Purpose	:	Waypoint Path for akoi570672.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:33 
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
	MovementLoopAddLocation(NPC, 760.97, -27.02, -382.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.84, -26.93, -380.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.56, -26.42, -386.69, 2, 0)
	MovementLoopAddLocation(NPC, 761.1, -26.31, -390.13, 2, 0)
	MovementLoopAddLocation(NPC, 760.95, -26.04, -393.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.84, -26.38, -409.1, 2, 0)
	MovementLoopAddLocation(NPC, 761.02, -27.01, -413.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 762.1, -26.54, -406.93, 2, 0)
	MovementLoopAddLocation(NPC, 761.01, -26.02, -400.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.8, -26.43, -401.93, 2, 0)
	MovementLoopAddLocation(NPC, 761.96, -27.05, -403.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.92, -27.28, -386.75, 2, 0)
	MovementLoopAddLocation(NPC, 760.93, -26.97, -379.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.49, -26.27, -387.24, 2, 0)
	MovementLoopAddLocation(NPC, 760.88, -26.03, -399.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 760.97, -26.31, -392.13, 2, 0)
	MovementLoopAddLocation(NPC, 761.84, -26.98, -388.43, 2, math.random(10, 20))
end