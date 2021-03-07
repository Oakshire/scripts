--[[
	Script Name		:	tomb_sentry6.lua
	Script Purpose	:	Waypoint Path for tomb_sentry6.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:22:56 PM
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
	MovementLoopAddLocation(NPC, 242.29, -6.86, -173.68, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 247.37, -6.86, -154.94, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 253.46, -6.86, -160.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 238.07, -6.86, -166.1, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 242.26, -6.86, -165.41, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 242.66, -6.86, -173.23, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 245.55, -6.86, -155.75, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 252.68, -6.86, -169.39, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 239.31, -6.86, -157.45, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 233.54, -6.86, -153.21, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 236.16, -6.86, -162.93, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 253.05, -6.86, -154.55, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.15, -6.86, -166.68, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 243.76, -6.86, -154.84, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.15, -6.86, -166.68, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 253.05, -6.86, -154.55, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 236.16, -6.86, -162.93, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 233.54, -6.86, -153.21, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 239.31, -6.86, -157.45, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 252.68, -6.86, -169.39, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 245.55, -6.86, -155.75, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 242.66, -6.86, -173.23, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 242.26, -6.86, -165.41, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 238.07, -6.86, -166.1, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 253.46, -6.86, -160.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 247.37, -6.86, -154.94, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 242.29, -6.86, -173.68, 2, math.random(0,7))
end


