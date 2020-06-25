--[[
	Script Name		:	bloodsaber_highguard5.lua
	Script Purpose	:	Waypoint Path for bloodsaber_highguard5.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:37:48 PM
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
	MovementLoopAddLocation(NPC, -38.47, -0.18, -172.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.67, -0.18, -170.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -34, -0.18, -167.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -34.33, -0.13, -153.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.06, 0.25, -146.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.16, -0.31, -146.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.12, 0.06, -149.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.57, -0.08, -144.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.77, -0.12, -131.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.73, -0.09, -120.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.77, -0.12, -131.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.57, -0.08, -144.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.12, 0.06, -149.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.16, -0.31, -146.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.06, 0.25, -146.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -34.33, -0.13, -153.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -34, -0.18, -167.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.67, -0.18, -170.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -38.47, -0.18, -172.38, 2, math.random(0,5))
end


