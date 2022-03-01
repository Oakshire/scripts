--[[
	Script Name		:	crawler_hatchling.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 09:24:28 PM
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
	MovementLoopAddLocation(NPC, 15.45, -0.11, -61.23, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 3.41, -0.08, -60.75, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 15.97, -0.04, -60.37, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.32, 0.43, -67.5, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.33, -0.35, -81.34, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.6, 0.07, -96.31, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.69, 0.35, -92.12, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.98, 0.17, -89.72, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.32, 0.17, -87.36, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.94, -0.26, -86.35, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.77, -0.37, -81.99, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.28, -0.74, -79.08, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 24.53, -0.82, -78.39, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.36, -0.59, -75.07, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.35, 0.58, -68.76, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 16.08, -0.07, -64.22, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 14.66, -0.02, -58.89, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 11.95, -0.05, -62.01, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 1.33, -0.02, -62.26, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -7.18, -0.05, -59.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -4.41, -0.05, -55.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.51, -0.06, -62.14, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.08, 0.04, -58.23, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 4.19, -0.06, -57.79, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 4.62, -0.08, -64.43, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 4.85, -0.09, -71.22, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 4.62, -0.08, -64.43, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 4.19, -0.06, -57.79, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.08, 0.04, -58.23, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.51, -0.06, -62.14, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -4.41, -0.05, -55.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -7.18, -0.05, -59.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 1.33, -0.02, -62.26, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 11.95, -0.05, -62.01, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 14.66, -0.02, -58.89, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 16.08, -0.07, -64.22, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.35, 0.58, -68.76, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.36, -0.59, -75.07, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 24.53, -0.82, -78.39, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.28, -0.74, -79.08, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.77, -0.37, -81.99, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.94, -0.26, -86.35, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.32, 0.17, -87.36, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.98, 0.17, -89.72, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.69, 0.35, -92.12, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.6, 0.07, -96.31, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.33, -0.35, -81.34, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.32, 0.43, -67.5, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 15.97, -0.04, -60.37, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 3.41, -0.08, -60.75, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 15.45, -0.11, -61.23, 2, math.random(0,2))
end


