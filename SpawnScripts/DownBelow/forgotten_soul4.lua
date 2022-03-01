--[[
	Script Name		:	forgotten_soul4.lua
	Script Purpose	:	Waypoint Path for forgotten_soul4.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:19:19 PM
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
	MovementLoopAddLocation(NPC, -218.8, -0.09, -92.58, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -219.72, -0.08, -90.4, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -218.81, -0.1, -97.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -216.63, -0.08, -94.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -218.17, -0.09, -93.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -222.31, -0.08, -93.86, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -219.23, -0.09, -91.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -217.28, -0.09, -93.55, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -217.01, -0.09, -96.2, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -220.69, -0.08, -91.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -216.69, -0.08, -93.28, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -216.75, -0.1, -95.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -219.22, -0.11, -96.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -222.06, -0.08, -93.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -222.45, 0.08, -94.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -220.05, -0.1, -95.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -217.57, -0.09, -94.46, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -220.95, -0.08, -93.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -217.57, -0.09, -94.46, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -220.05, -0.1, -95.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -222.45, 0.08, -94.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -222.06, -0.08, -93.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -219.22, -0.11, -96.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -216.75, -0.1, -95.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -216.69, -0.08, -93.28, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -220.69, -0.08, -91.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -217.01, -0.09, -96.2, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -217.28, -0.09, -93.55, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -219.23, -0.09, -91.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -222.31, -0.08, -93.86, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -218.17, -0.09, -93.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -216.63, -0.08, -94.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -218.81, -0.1, -97.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -219.72, -0.08, -90.4, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -218.8, -0.09, -92.58, 2, math.random(0,15))
end


