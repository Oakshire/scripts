--[[
	Script Name		:	tomb_guard16.lua
	Script Purpose	:	Waypoint Path for tomb_guard16.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 08:22:13 PM
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
	MovementLoopAddLocation(NPC, 241.22, -6.86, -97.04, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.8, -6.86, -90.79, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 250.17, -6.86, -79.91, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 234.44, -6.86, -79.71, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 236.85, -6.86, -82.37, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.77, -6.86, -81.99, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 249.69, -6.86, -96.94, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.14, -6.86, -97.44, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.72, -6.86, -91.27, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 240.94, -6.86, -86.62, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 246.55, -6.86, -86.38, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 247.65, -6.86, -79.97, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.48, -6.86, -86.77, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.34, -6.86, -93.02, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 246.67, -6.86, -97.68, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.34, -6.86, -93.02, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.48, -6.86, -86.77, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 247.65, -6.86, -79.97, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 246.55, -6.86, -86.38, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 240.94, -6.86, -86.62, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.72, -6.86, -91.27, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.14, -6.86, -97.44, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 249.69, -6.86, -96.94, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.77, -6.86, -81.99, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 236.85, -6.86, -82.37, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 234.44, -6.86, -79.71, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 250.17, -6.86, -79.91, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 251.8, -6.86, -90.79, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 241.22, -6.86, -97.04, 2, math.random(0,7))
end


