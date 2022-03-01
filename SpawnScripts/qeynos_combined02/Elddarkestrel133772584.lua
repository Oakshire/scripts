--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel133772584.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel133772584.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:03 
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
	MovementLoopAddLocation(NPC, 617.15, -16.0748, -326.65, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 611.81, -14.47, -336.39, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 618.21, -14, -328.16, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 623.57, -13.55, -322.62, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 619.5, -13, -327.03, 2, 0)
	MovementLoopAddLocation(NPC, 617.17, -12.5, -334.52, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 621.86, -11.47, -337.55, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 619.02, -11.85, -335.44, 2, 0)
	MovementLoopAddLocation(NPC, 615.2, -12.72, -328.53, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 618, -13.28, -322.99, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 614.29, -13.77, -336.13, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 613.01, -12.17, -325.6, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 619.46, -14.4, -336.97, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 617.43, -14.05, -332.16, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 620.75, -13.34, -335.68, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 618.07, -14.56, -332.52, 2, 0)
end