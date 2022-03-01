--[[
	Script Name		:	crypt_tempest3.lua
	Script Purpose	:	Waypoint Path for crypt_tempest3.lua
	Script Author	:	Auto Generated
	Script Date		:	06/08/2020 12:44:02 PM
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
	MovementLoopAddLocation(NPC, 42.87, 6.97, -27.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.41, 6.8, -33.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 31.9, 6.83, -43.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.78, 6.57, -44.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.38, 7.45, -43.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.11, 6.85, -34.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.09, 6.85, -25.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.11, 6.85, -34.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.38, 7.45, -43.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.78, 6.57, -44.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 31.9, 6.83, -43.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.41, 6.8, -33.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.87, 6.97, -27.28, 2, math.random(0,5))
end


