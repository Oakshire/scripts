--[[
	Script Name		:	lika.lua
	Script Purpose	:	Waypoint Path for lika.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:47:31 AM
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
	MovementLoopAddLocation(NPC, 66.97, -0.14, -110.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.22, 0.52, -113.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 75.42, 0, -119.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 76.12, -0.08, -131.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 77.12, -0.02, -119.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 72.62, 0.52, -112.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 67.5, -0.11, -108.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 60.68, -0.12, -106.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.54, -0.03, -106.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 50.89, -0.11, -103.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.46, -0.13, -96.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.52, 0.52, -83.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.82, 0.58, -81.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 92.08, 0.09, -81.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.32, -0.02, -77.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.66, 0.18, -63.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 95.22, 0.4, -56.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.66, -0.02, -36.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 89.91, 0.02, -32.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 65.59, -0.17, -33.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 62.48, 0.29, -33.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.15, 0.04, -44.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.58, 0.03, -47.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.53, -0.13, -48.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.24, 0, -38.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 36.4, -0.05, -30.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.42, 0.43, -19.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.54, -0.16, -0.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.33, 0.52, 12.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.54, -0.16, -0.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.42, 0.43, -19.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 36.4, -0.05, -30.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.24, 0, -38.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.53, -0.13, -48.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.58, 0.03, -47.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.15, 0.04, -44.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 62.48, 0.29, -33.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 65.59, -0.17, -33.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 89.91, 0.02, -32.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.66, -0.02, -36.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 95.22, 0.4, -56.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.66, 0.18, -63.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.32, -0.02, -77.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 92.08, 0.09, -81.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.82, 0.58, -81.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.52, 0.52, -83.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.46, -0.13, -96.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 50.89, -0.11, -103.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.54, -0.03, -106.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 60.68, -0.12, -106.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 67.5, -0.11, -108.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 72.62, 0.52, -112.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 77.12, -0.02, -119.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 76.12, -0.08, -131.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 75.42, 0, -119.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.22, 0.52, -113.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 66.97, -0.14, -110.59, 2, math.random(0,5))
end


