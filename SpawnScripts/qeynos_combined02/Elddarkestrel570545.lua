--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570545.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570545.lua
	Script Author	:	Rylec
	Script Date		:	09-23-2021 06:03:43 
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
	MovementLoopAddLocation(NPC, 554.23, -16, -327.89, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 548.68, -17, -325.99, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 552.6, -16.5, -325.74, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 558.19, -17.4, -327.16, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 557.27, -17.74, -319.22, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 551.12, -16.19, -328.25, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 557.49, -18.04, -332.1, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 553.88, -17.25, -328.55, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 558.68, -17.92, -333.36, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 557.26, -17.1, -324.92, 2, 0)
	MovementLoopAddLocation(NPC, 553.57, -16.9, -318.68, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 549.26, -15.5, -324.89, 2, math.random(10, 17))
end