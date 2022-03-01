--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel133772647.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel133772647.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:24 
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
	MovementLoopAddLocation(NPC, 528.23, -14, -388.58, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 537.51, -13.7, -389.92, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 531.91, -13, -388.17, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 524.4, -12.3, -393.01, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 526.27, -13.82, -382.4, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 531.76, -14.43, -387.49, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 541.3, -13.06, -392.12, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 530.94, -14.26, -395.85, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 533.34, -13.8, -387.73, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 535.6, -13.45, -385.41, 2, math.random(10, 17))
end