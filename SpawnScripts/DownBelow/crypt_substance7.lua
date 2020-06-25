--[[
	Script Name		:	crypt_substance6_1.lua
	Script Purpose	:	Waypoint Path for crypt_substance6_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 11:08:57 PM
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
	MovementLoopAddLocation(NPC, -20.48, -0.13, -80.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -17.69, 0.02, -85.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -13.31, -0.05, -90.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.31, -0.02, -110, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.11, -0.05, -111.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.98, -0.11, -120.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.85, -0.08, -129.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.04, -0.56, -138.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.58, -0.11, -153.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -81.27, -0.09, -152.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.58, -0.11, -153.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.04, -0.56, -138.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.85, -0.08, -129.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.98, -0.11, -120.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.11, -0.05, -111.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.31, -0.02, -110, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -13.31, -0.05, -90.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -17.69, 0.02, -85.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.48, -0.13, -80.69, 2, math.random(0,10))
end


