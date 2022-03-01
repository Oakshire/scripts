--[[
	Script Name		:	tomb_guard15.lua
	Script Purpose	:	Waypoint Path for tomb_guard15.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 08:22:08 PM
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
	MovementLoopAddLocation(NPC, 252.73, -6.86, -97.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 239.37, -6.86, -80.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 234.43, -6.86, -80.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.81, -6.86, -79.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.36, -6.86, -97.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 241.14, -6.86, -95.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.68, -6.86, -92.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 243.67, -5.84, -91.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 245.24, -6.52, -91.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 247.4, -6.86, -79.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 241.04, -6.86, -86.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 253.72, -6.86, -87.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.52, -6.86, -88.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 247.33, -6.86, -97.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 247.8, -6.86, -90.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.08, -6.86, -91.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 247.8, -6.86, -90.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 247.33, -6.86, -97.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.52, -6.86, -88.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 253.72, -6.86, -87.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 241.04, -6.86, -86.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 247.4, -6.86, -79.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 245.24, -6.52, -91.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 243.67, -5.84, -91.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.68, -6.86, -92.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 241.14, -6.86, -95.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.36, -6.86, -97.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 251.81, -6.86, -79.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 234.43, -6.86, -80.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 239.37, -6.86, -80.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 252.73, -6.86, -97.14, 2, math.random(0,5))
end


