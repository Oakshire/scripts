--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570544.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570544.lua
	Script Author	:	Rylec
	Script Date		:	02-27-2021 01:05:05 
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
	MovementLoopAddLocation(NPC, 711.23, -14, -404.76, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 714.46, -13.4, -407.72, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 721.19, -15.3, -403.62, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 717.63, -14.8, -403.91, 2, 0)
	MovementLoopAddLocation(NPC, 716.09, -14.6, -402.55, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 720.16, -14, -394.59, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 719.09, -14.3, -405.85, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 717.26, -13.8, -403.54, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 722.84, -14.3, -400.24, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 718.75, -14, -401.09, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 711.26, -13, -402.84, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 716.04, -13.3, -402.79, 2, 0)
	MovementLoopAddLocation(NPC, 718.75, -13.4, -405.42, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 713.74, -13.87, -405.58, 2, 0)
end