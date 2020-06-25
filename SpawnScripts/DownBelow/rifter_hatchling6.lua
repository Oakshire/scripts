--[[
	Script Name		:	rifter_hatchling6.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling6.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:13:41 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -163.14, -0.08, -118.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.14, 1.17, -118.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.68, 1.17, -114.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.89, 1.17, -125.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.2, 1.17, -125.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.35, -0.22, -131.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.65, -0.27, -134.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -210.05, -0.39, -132.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.65, -0.27, -134.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.35, -0.22, -131.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.2, 1.17, -125.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.89, 1.17, -125.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.68, 1.17, -114.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.14, 1.17, -118.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -163.14, -0.08, -118.03, 2, math.random(0,10))
end


