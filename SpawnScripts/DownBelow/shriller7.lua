--[[
	Script Name		:	shriller9.lua
	Script Purpose	:	Waypoint Path for shriller9.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:19:30 PM
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
	MovementLoopAddLocation(NPC, -32.08, 0.54, -126.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.7, -0.09, -133.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.12, 0.19, -148.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -62.12, -0.05, -153.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.97, -0.06, -153.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.67, -0.01, -152.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, -0.09, -158.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, -0.1, -164.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.67, -0.08, -164.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.19, -0.07, -167.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.94, -0.08, -168.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.25, -0.08, -162.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.24, -0.08, -162.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.25, -0.08, -163.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, -0.08, -165.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.99, -0.07, -167.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.39, -0.07, -168.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.65, -0.08, -162.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.02, -0.08, -166.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.15, -0.1, -165.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.58, -0.09, -157.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.5, -0.06, -153.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.58, -0.09, -157.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.15, -0.1, -165.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.02, -0.08, -166.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.65, -0.08, -162.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.39, -0.07, -168.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.99, -0.07, -167.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, -0.08, -165.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.25, -0.08, -163.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.24, -0.08, -162.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.25, -0.08, -162.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.94, -0.08, -168.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.19, -0.07, -167.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.67, -0.08, -164.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, -0.1, -164.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, -0.09, -158.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.67, -0.01, -152.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.97, -0.06, -153.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -62.12, -0.05, -153.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.12, 0.19, -148.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.7, -0.09, -133.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.08, 0.54, -126.98, 2, math.random(0,10))
end


