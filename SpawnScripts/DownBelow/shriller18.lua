--[[
	Script Name		:	shriller18.lua
	Script Purpose	:	Waypoint Path for shriller18.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 03:55:41 PM
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
	MovementLoopAddLocation(NPC, -148.04, -0.08, -143.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.03, -0.06, -147.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -142.64, -0.08, -142.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.3, -0.08, -147.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.55, -0.06, -146.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.33, -0.08, -142.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.93, -0.08, -142.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.92, -0.08, -142.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.08, -0.09, -138.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.37, -0.06, -136.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.22, -0.08, -110.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.97, -0.1, -96.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.96, -0.11, -84.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.04, -0.27, -72.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.58, 0.39, -72.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.5, -0.03, -66.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.79, -0.08, -59.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.15, 0.47, -48.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.98, -0.06, -33.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.7, -0.08, -36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.03, -0.04, -44.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.81, -0.1, -43.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -192.33, -0.09, -53.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.83, -0.11, -58.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.72, -0.07, -61.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -201.38, -0.08, -63.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.32, -0.08, -58.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -202.09, -0.1, -57.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.32, -0.08, -58.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -201.38, -0.08, -63.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.72, -0.07, -61.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.83, -0.11, -58.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -192.33, -0.09, -53.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.81, -0.1, -43.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.03, -0.04, -44.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.7, -0.08, -36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.98, -0.06, -33.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.15, 0.47, -48.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.79, -0.08, -59.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.5, -0.03, -66.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.58, 0.39, -72.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.04, -0.27, -72.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.96, -0.11, -84.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.97, -0.1, -96.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.22, -0.08, -110.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.37, -0.06, -136.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.08, -0.09, -138.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.92, -0.08, -142.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.93, -0.08, -142.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.33, -0.08, -142.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.55, -0.06, -146.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.3, -0.08, -147.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -142.64, -0.08, -142.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.03, -0.06, -147.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.04, -0.08, -143.71, 2, math.random(0,10))
end


