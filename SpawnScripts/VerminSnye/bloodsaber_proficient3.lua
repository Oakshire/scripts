--[[
	Script Name		:	bloodsaber_proficient3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_proficient3.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 05:02:06 PM
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
	MovementLoopAddLocation(NPC, 24.87, -0.08, -182.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.75, -0.08, -179.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.21, -0.31, -194.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.88, -0.26, -190.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.65, -0.08, -189.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.64, -0.08, -186.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.22, -0.08, -179.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.8, -0.08, -186.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.29, -0.08, -198.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.38, -0.11, -203.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.39, -0.2, -198.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.87, -0.08, -188.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.92, -0.08, -187.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.4, -0.08, -180.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.57, -0.08, -185.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.4, -0.08, -180.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.92, -0.08, -187.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.87, -0.08, -188.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.39, -0.2, -198.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.38, -0.11, -203.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.29, -0.08, -198.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.8, -0.08, -186.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.22, -0.08, -179.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.64, -0.08, -186.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.65, -0.08, -189.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.88, -0.26, -190.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.21, -0.31, -194.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.75, -0.08, -179.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.87, -0.08, -182.81, 2, math.random(0,5))
end


