--[[
    Script Name     :   SpawnScripts/qeynos_combined02/aduck570611.lua
	Script Purpose	:	Waypoint Path for aduck570611.lua
	Script Author	:	Rylec
	Script Date		:	07-28-2021 06:39:36 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 706.9, -17.12, -340.12, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 718.23, -17.06, -329.19, 2, 0)
	MovementLoopAddLocation(NPC, 721.42, -17.11, -327.83, 2, 0)
	MovementLoopAddLocation(NPC, 730.6, -17.77, -327.35, 2, 0)
	MovementLoopAddLocation(NPC, 753.33, -20.28, -332.45, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 761.25, -19.65, -331.63, 2, 0)
	MovementLoopAddLocation(NPC, 766.5, -19.69, -332.64, 2, 0)
	MovementLoopAddLocation(NPC, 776.61, -21.24, -340.12, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 775.34, -20.32, -335.96, 2, 0)
	MovementLoopAddLocation(NPC, 768.1, -18.88, -330.14, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 753.94, -19.93, -331.4, 2, 0)
	MovementLoopAddLocation(NPC, 747.57, -19.88, -331.11, 2, 0)
	MovementLoopAddLocation(NPC, 732.16, -17.72, -325.62, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 716.13, -17.04, -332.17, 2, 0)
	MovementLoopAddLocation(NPC, 708.9, -17.13, -337.95, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 707.84, -17.08, -337.08, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 709.86, -17.22, -339.05, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 707.71, -17.14, -339.94, 2, math.random(15, 35))
end