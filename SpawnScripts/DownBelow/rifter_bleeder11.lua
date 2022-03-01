--[[
	Script Name		:	rifter_bleeder11.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder11.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:45:57 AM
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
	MovementLoopAddLocation(NPC, -170.17, 1.15, -116.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.55, 1.17, -117.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.75, -0.04, -109.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -186.8, -0.07, -104.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.48, -0.08, -108.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.16, -0.11, -106.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.54, -0.03, -104.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.26, 0.16, -103.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.35, -0.08, -104.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.41, -0.07, -106.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.64, 0.99, -116.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.68, 1.17, -124.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.4, 2.15, -120.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.93, 1.17, -117.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.4, 2.15, -120.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.68, 1.17, -124.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.64, 0.99, -116.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.41, -0.07, -106.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.35, -0.08, -104.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.26, 0.16, -103.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.54, -0.03, -104.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.16, -0.11, -106.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.48, -0.08, -108.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -186.8, -0.07, -104.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.75, -0.04, -109.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.55, 1.17, -117.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.17, 1.15, -116.67, 2, math.random(0,5))
end


