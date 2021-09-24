--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly133772590.lua
	Script Purpose	:	Waypoint Path for adragonfly133772590.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:15 
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
	MovementLoopAddLocation(NPC, 656.78, -16.3, -262.54, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 659.67, -14.62, -259.74, 7, 0)
	MovementLoopAddLocation(NPC, 662.62, -13.83, -255.34, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 659.39, -15.42, -258.33, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 653.26, -16.4, -259.34, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 661.72, -14.11, -261.06, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 658.36, -13.12, -249.2, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 658.41, -15.51, -254.65, 7, 0)
	MovementLoopAddLocation(NPC, 658.82, -16.27, -258.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 657.29, -15.9, -262.04, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 667.65, -13.09, -247.36, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 671.33, -14.19, -252.64, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 663.65, -13.46, -253.9, 7, math.random(5, 8))
end