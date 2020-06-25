--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425464.lua
	Script Purpose	:	Waypoint Path for ashoalglider425464.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:46 
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
	MovementLoopAddLocation(NPC, -145.41, -12.23, 47.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.01, -11.96, 52.31, 2, 0)
	MovementLoopAddLocation(NPC, -114.84, -11.48, 55.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.72, -12, 53.87, 2, 0)
	MovementLoopAddLocation(NPC, -143.27, -12.88, 50.06, 2, 0)
	MovementLoopAddLocation(NPC, -147.18, -13, 52.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.2, -12.46, 55.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.55, -11.37, 17.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.74, -13.5, 20.58, 2, 0)
	MovementLoopAddLocation(NPC, -150.02, -14.24, 24.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.11, -11.69, 20.84, 2, 0)
	MovementLoopAddLocation(NPC, -128.59, -11.08, 20.75, 2, 0)
	MovementLoopAddLocation(NPC, -123.65, -11.51, 19.09, 2, 0)
	MovementLoopAddLocation(NPC, -121.18, -11.6, 16.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.38, -11.05, 15.54, 2, 0)
	MovementLoopAddLocation(NPC, -136.85, -10.74, 8.17, 2, 0)
	MovementLoopAddLocation(NPC, -142.17, -11.26, 7.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.01, -11.36, 15.87, 2, 0)
	MovementLoopAddLocation(NPC, -138.2, -11.49, 27.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.65, -12.1, 15.01, 2, 0)
	MovementLoopAddLocation(NPC, -142.62, -12.65, 5.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.93, -12.48, 22.81, 2, 0)
	MovementLoopAddLocation(NPC, -140.37, -12.49, 37.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.23, -12.09, 45.44, 2, 0)
end

