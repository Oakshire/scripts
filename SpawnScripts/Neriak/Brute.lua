--[[
	Script Name		:	SpawnScripts/Neriak/Brute.lua
	Script Purpose	:	Waypoint Path for Brute
	Script Author	:	Cynnar
	Script Date		:	5/27/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
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
	ranpause = math.random(0, 10)
	
	MovementLoopAddLocation(NPC, -588.84, 27.72, 33.22, 2, 0)
	MovementLoopAddLocation(NPC, -596.21, 27.37, 41.73, 2, ranpause)
	MovementLoopAddLocation(NPC, -616.07, 27.05, 48.21, 2, 0)
	MovementLoopAddLocation(NPC, -622.31, 27.04, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, -626.66, 27.05, 56.75, 2, 0)
	MovementLoopAddLocation(NPC, -628.53, 26.93, 62.82, 2, ranpause)
	MovementLoopAddLocation(NPC, -627.81, 26.27, 69.33, 2, 0)
	MovementLoopAddLocation(NPC, -626.05, 25.02, 73.16, 2, 0)
	MovementLoopAddLocation(NPC, -621.1, 23.44, 80.02, 2, 0)
	MovementLoopAddLocation(NPC, -615.2, 21.96, 85.74, 2, 0)
	MovementLoopAddLocation(NPC, -611.49, 21.79, 86.67, 2, ranpause)
	MovementLoopAddLocation(NPC, -608.25, 21.92, 86.39, 2, 0)
	MovementLoopAddLocation(NPC, -601.81, 22.53, 84.96, 2, 0)
	MovementLoopAddLocation(NPC, -592.17, 21.45, 85.28, 2, 0)
	MovementLoopAddLocation(NPC, -587.27, 21.01, 87.67, 2, ranpause)
	MovementLoopAddLocation(NPC, -584.73, 20.67, 92.57, 2, 0)
	MovementLoopAddLocation(NPC, -584.64, 20.1, 97.55, 2, 0)
	MovementLoopAddLocation(NPC, -585.41, 18.42, 110.12, 2, 0)
	MovementLoopAddLocation(NPC, -584.97, 18.26, 114.33, 2, 0)
	MovementLoopAddLocation(NPC, -585.77, 18.65, 118.75, 2, ranpause)
	MovementLoopAddLocation(NPC, -586.27, 19.64, 130.91, 2, 0)
	MovementLoopAddLocation(NPC, -585.88, 20.08, 132.92, 2, 0)
	MovementLoopAddLocation(NPC, -586.06, 20.29, 136.76, 2, ranpause)
	MovementLoopAddLocation(NPC, -585.88, 20.08, 132.92, 2, 0)
	MovementLoopAddLocation(NPC, -586.27, 19.64, 130.91, 2, 0)
	MovementLoopAddLocation(NPC, -585.77, 18.65, 118.75, 2, 0)
	MovementLoopAddLocation(NPC, -584.97, 18.26, 114.33, 2, 0)
	MovementLoopAddLocation(NPC, -585.41, 18.42, 110.12, 2, ranpause)
	MovementLoopAddLocation(NPC, -584.64, 20.1, 97.55, 2, 0)
	MovementLoopAddLocation(NPC, -584.73, 20.67, 92.57, 2, 0)
	MovementLoopAddLocation(NPC, -587.27, 21.01, 87.67, 2, ranpause)
	MovementLoopAddLocation(NPC, -592.17, 21.45, 85.28, 2, 0)
	MovementLoopAddLocation(NPC, -601.81, 22.53, 84.96, 2, 0)
	MovementLoopAddLocation(NPC, -608.25, 21.92, 86.39, 2, 0)
	MovementLoopAddLocation(NPC, -611.49, 21.79, 86.67, 2, ranpause)
	MovementLoopAddLocation(NPC, -615.2, 21.96, 85.74, 2, 0)
	MovementLoopAddLocation(NPC, -621.1, 23.44, 80.02, 2, 0)
	MovementLoopAddLocation(NPC, -626.05, 25.02, 73.16, 2, 0)
	MovementLoopAddLocation(NPC, -627.81, 26.27, 69.33, 2, ranpause)
	MovementLoopAddLocation(NPC, -628.53, 26.93, 62.82, 2, 0)
	MovementLoopAddLocation(NPC, -626.66, 27.05, 56.75, 2, 0)
	MovementLoopAddLocation(NPC, -622.31, 27.04, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, -616.07, 27.05, 48.21, 2, 0)
	MovementLoopAddLocation(NPC, -596.21, 27.37, 41.73, 2, 0)
	MovementLoopAddLocation(NPC, -588.84, 27.72, 33.22, 2, ranpause)
end

