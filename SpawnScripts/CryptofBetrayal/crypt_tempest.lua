--[[
	Script Name		:	crypt_tempest.lua
	Script Purpose	:	Waypoint Path for crypt_tempest.lua
	Script Author	:	Auto Generated
	Script Date		:	06/08/2020 12:43:50 PM
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
	MovementLoopAddLocation(NPC, 84.77, 6.88, 18.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 69.41, 7.35, 15.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 63.38, 6.86, 9.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 64.03, 6.9, -17.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 61.27, 6.9, -19.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 46.69, 6.94, -20.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 35.14, 6.75, -33.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 32.29, 6.85, -42.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.72, 7.38, -44.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 2.81, 7.44, -43.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.16, 6.99, -24.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.4, 6.82, -10.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.16, 6.99, -24.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 2.81, 7.44, -43.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.72, 7.38, -44.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 32.29, 6.85, -42.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 35.14, 6.75, -33.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 46.69, 6.94, -20.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 61.27, 6.9, -19.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 64.03, 6.9, -17.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 63.38, 6.86, 9.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 69.41, 7.35, 15.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.77, 6.88, 18.46, 2, math.random(0,10))
end


