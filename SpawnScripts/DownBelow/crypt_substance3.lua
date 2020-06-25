--[[
	Script Name		:	crypt_substance3.lua
	Script Purpose	:	Waypoint Path for crypt_substance3.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:15:07 PM
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
	MovementLoopAddLocation(NPC, -15.13, -0.07, -40.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.74, -0.08, -42.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.72, -0.05, -38.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.13, -0.04, -39.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.53, -0.08, -35.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.52, -0.06, -34.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.62, -0.08, -34.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.98, 0.47, -27.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -5.27, -0.08, -31.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.37, -0.07, -35.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.34, -0.12, -40.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.61, 0.49, -44.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.41, -0.08, -51.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.92, 0.53, -52.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.62, -0.04, -59.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.73, -0.08, -63.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.97, -0.02, -58.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.25, 0.49, -67.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.97, -0.02, -58.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.73, -0.08, -63.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.62, -0.04, -59.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.92, 0.53, -52.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.41, -0.08, -51.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.61, 0.49, -44.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.34, -0.12, -40.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.37, -0.07, -35.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -5.27, -0.08, -31.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.98, 0.47, -27.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.62, -0.08, -34.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.52, -0.06, -34.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.53, -0.08, -35.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.13, -0.04, -39.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.72, -0.05, -38.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.74, -0.08, -42.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.13, -0.07, -40.04, 2, math.random(0,5))
end


