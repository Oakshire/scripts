--[[
	Script Name		:	grotesque_mass_1.lua
	Script Purpose	:	Waypoint Path for grotesque_mass_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 11:26:04 PM
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
	MovementLoopAddLocation(NPC, 60.89, -0.06, -51.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.5, -0.06, -45.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 40.45, 0.85, -49.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 36.57, 2.69, -63.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.95, 4.16, -71.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 58.73, 5.91, -67.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.46, 6.98, -57.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 74.4, 6.87, -58.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.46, 6.98, -57.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 58.73, 5.91, -67.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.95, 4.16, -71.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 36.57, 2.69, -63.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 40.45, 0.85, -49.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.5, -0.06, -45.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.89, -0.06, -51.79, 2, math.random(0,10))
end


