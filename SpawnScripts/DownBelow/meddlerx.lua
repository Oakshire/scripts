--[[
	Script Name		:	meddlerx.lua
	Script Purpose	:	Waypoint Path for meddlerx.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 08:10:36 PM
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
	MovementLoopAddLocation(NPC, -3.89, 0.19, -99.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.33, -0.09, -104.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.62, -0.06, -109.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 7.08, 0, -127.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.54, -0.05, -108.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 15.65, 0.14, -100.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 21.78, -0.06, -105.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 24.52, -0.07, -103.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 21.78, -0.06, -105.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 15.65, 0.14, -100.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.54, -0.05, -108.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 7.08, 0, -127.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.62, -0.06, -109.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.33, -0.09, -104.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.89, 0.19, -99.26, 2, math.random(0,10))
end


