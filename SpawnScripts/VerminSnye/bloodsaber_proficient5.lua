--[[
	Script Name		:	bloodsaber_proficient5.lua
	Script Purpose	:	Waypoint Path for bloodsaber_proficient5.lua
	Script Author	:	Devn00b
	Script Date		:	06/15/2020 01:51:12 AM
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
	MovementLoopAddLocation(NPC, 94.8, -0.08, -164.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 100.48, -0.08, -163.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.61, -0.08, -166.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.71, -0.08, -181.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 80.14, -0.08, -181.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.88, -0.08, -158.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.01, -0.13, -157.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 85.36, -0.08, -172.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 86.68, -0.38, -172.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 96.65, -0.08, -182.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 100.1, -0.08, -170.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 91.54, -0.08, -162.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 91.48, -0.08, -156.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 91.53, -0.08, -163.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 79.68, -0.09, -171.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 79.75, -0.08, -180.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 101.55, -0.08, -180.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 79.75, -0.08, -180.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 79.68, -0.09, -171.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 91.53, -0.08, -163.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 91.48, -0.08, -156.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 91.54, -0.08, -162.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 100.1, -0.08, -170.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 96.65, -0.08, -182.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 86.68, -0.38, -172.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 85.36, -0.08, -172.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.01, -0.13, -157.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.88, -0.08, -158.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 80.14, -0.08, -181.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.71, -0.08, -181.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.61, -0.08, -166.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 100.48, -0.08, -163.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.8, -0.08, -164.29, 2, math.random(0,5))
end


