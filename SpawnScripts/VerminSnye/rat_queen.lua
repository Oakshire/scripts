--[[
	Script Name		:	rat_queen.lua
	Script Purpose	:	Waypoint Path for rat_queen.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:28:21 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Seven ... All seven!!! lost, lost!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 46.23, -0.34, -132.82, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 46.59, 0.04, -149.97, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 56.59, 0.04, -149.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 55.91, 0.04, -130.58, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.45, 0.04, -130.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.31, 0.04, -150.54, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 56.56, 0.04, -134.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 53.9, 0.02, -149.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 50.18, 0.02, -149.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.38, -0.34, -137.28, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.67, 0.04, -149.73, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 45.54, -0.34, -148.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 46.82, -0.34, -141.07, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 42.04, -0.34, -140.56, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 36.56, -0.34, -132.27, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.74, -0.34, -132.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.04, -0.34, -133.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.43, 0.9, -138.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.63, 1.21, -149.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 14.63, 1.21, -140.66, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 25.05, 1.22, -141.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.9, 1.22, -141.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.48, 1.22, -138.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.41, 1.21, -148.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.72, 1.21, -146.79, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 14.72, 1.21, -141.69, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 14.04, -0.06, -131.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 44.51, -0.01, -130.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 14.04, -0.06, -131.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 14.72, 1.21, -141.69, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.72, 1.21, -146.79, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.41, 1.21, -148.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.48, 1.22, -138.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.9, 1.22, -141.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 25.05, 1.22, -141.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 14.63, 1.21, -140.66, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.63, 1.21, -149.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.43, 0.9, -138.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.04, -0.34, -133.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.74, -0.34, -132.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 36.56, -0.34, -132.27, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 42.04, -0.34, -140.56, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 46.82, -0.34, -141.07, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 45.54, -0.34, -148.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.67, 0.04, -149.73, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.38, -0.34, -137.28, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 50.18, 0.02, -149.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 53.9, 0.02, -149.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 56.56, 0.04, -134.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.31, 0.04, -150.54, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 39.45, 0.04, -130.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 55.91, 0.04, -130.58, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 56.59, 0.04, -149.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 46.59, 0.04, -149.97, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 46.23, -0.34, -132.82, 2, math.random(0,15))
end


