--[[
	Script Name		:	ire_minion6.lua
	Script Purpose	:	Waypoint Path for ire_minion6.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 11:17:35 PM
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
	MovementLoopAddLocation(NPC, 84.19, 6.85, -74.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.35, 6.87, -69.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.6, 7.03, -74.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.03, 6.83, -72.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.09, 6.92, -69.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.83, 6.89, -71.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.47, 6.83, -69.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.63, 6.89, -74.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 89.17, 6.88, -69.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.45, 7.03, -72.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.39, 6.88, -69.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.46, 6.91, -71.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.06, 6.83, -72.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.07, 6.87, -74.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.4, 6.88, -71.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.07, 6.87, -74.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.06, 6.83, -72.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.46, 6.91, -71.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.39, 6.88, -69.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.45, 7.03, -72.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 89.17, 6.88, -69.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.63, 6.89, -74.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.47, 6.83, -69.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.83, 6.89, -71.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.09, 6.92, -69.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.03, 6.83, -72.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.6, 7.03, -74.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.35, 6.87, -69.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 84.19, 6.85, -74.43, 2, math.random(0,10))
end


