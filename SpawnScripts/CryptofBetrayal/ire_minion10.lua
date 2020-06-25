--[[
	Script Name		:	ire_minion10.lua
	Script Purpose	:	Waypoint Path for ire_minion10.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 03:01:39 PM
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
	MovementLoopAddLocation(NPC, 165.44, 6.89, -51.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 163.87, 6.89, -53.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.71, 7.09, -55.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.8, 7.01, -57.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.4, 7.24, -54.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.34, 7.24, -52.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.05, 6.82, -56.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168, 7.89, -53.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.47, 6.83, -55.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.37, 6.8, -55.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.28, 6.79, -55.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.06, 6.89, -52.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.66, 6.97, -56.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.56, 7.24, -54.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.27, 7.24, -52.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.45, 7.24, -54.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.98, 6.8, -54.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.45, 7.24, -54.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.27, 7.24, -52.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.56, 7.24, -54.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.66, 6.97, -56.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.06, 6.89, -52.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.28, 6.79, -55.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.37, 6.8, -55.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.47, 6.83, -55.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168, 7.89, -53.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.05, 6.82, -56.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.34, 7.24, -52.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.4, 7.24, -54.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.8, 7.01, -57.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.71, 7.09, -55.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 163.87, 6.89, -53.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.44, 6.89, -51.63, 2, math.random(0,5))
end


