--[[
	Script Name		:	tomb_guard17.lua
	Script Purpose	:	Waypoint Path for tomb_guard17.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 08:34:47 PM
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
	MovementLoopAddLocation(NPC, 234.33, -6.86, -119.87, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.41, -6.86, -116.19, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.55, -6.86, -116.59, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.53, -6.86, -112.2, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 242, -6.86, -103.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.56, -6.86, -106.93, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.42, -6.86, -92.27, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 235.21, -6.86, -104.5, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.77, -6.86, -109.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.98, -6.86, -115.74, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.14, -6.86, -121.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 237.96, -6.86, -103.73, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 245.71, -6.86, -103.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 239.16, -6.86, -110.78, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 239.32, -6.86, -105.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.12, -6.86, -112.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 247.03, -6.86, -118.79, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.12, -6.86, -112.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 239.32, -6.86, -105.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 239.16, -6.86, -110.78, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 245.71, -6.86, -103.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 237.96, -6.86, -103.73, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.14, -6.86, -121.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.98, -6.86, -115.74, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.77, -6.86, -109.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 235.21, -6.86, -104.5, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.42, -6.86, -92.27, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.56, -6.86, -106.93, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 242, -6.86, -103.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.53, -6.86, -112.2, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.55, -6.86, -116.59, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.41, -6.86, -116.19, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.33, -6.86, -119.87, 2, math.random(0,8))
end


