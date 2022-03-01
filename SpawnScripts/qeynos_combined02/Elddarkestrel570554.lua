--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570554.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570554.lua
	Script Author	:	Rylec
	Script Date		:	07-29-2021 08:17:29 
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
	MovementLoopAddLocation(NPC, 739.18, -14.95, -297.98, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 748.35, -13.11, -300.97, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 750.23, -12.81, -302.06, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 738.56, -14.27, -307.22, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 737.55, -13.78, -304.03, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 745.03, -12.05, -312.82, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 745.31, -12.57, -306.07, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 744.99, -12.89, -303.81, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 744.12, -13.13, -302.38, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 748.15, -12.56, -303.37, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 750.19, -12.13, -311.33, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 743.07, -13.44, -301.01, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 739.31, -14.36, -310.14, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 741.92, -14.28, -305.97, 2, 0)
	MovementLoopAddLocation(NPC, 744.74, -13.82, -304.72, 2, math.random(10, 17))
end
