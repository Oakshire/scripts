--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427151.lua
	Script Purpose	:	Waypoint Path for areefturtle427151.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:52:36 
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
	MovementLoopAddLocation(NPC, -89.31, -11.84, -5.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.53, -10.19, -8.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.48, -10.45, -5.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.87, -10.25, -16.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.26, -10.2, -64.26, 2, 0)
	MovementLoopAddLocation(NPC, -24.48, -10.2, -71.8, 2, 0)
	MovementLoopAddLocation(NPC, -22.91, -10.55, -83.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.8, -10.29, -76.07, 2, 0)
	MovementLoopAddLocation(NPC, -29.02, -10.2, -72.03, 2, 0)
	MovementLoopAddLocation(NPC, -35.32, -10.25, -62.81, 2, 0)
	MovementLoopAddLocation(NPC, -40.15, -10.52, -54.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.8, -11.34, -46.53, 2, 0)
	MovementLoopAddLocation(NPC, -36.25, -10.45, -9, 2, 0)
	MovementLoopAddLocation(NPC, -36.17, -10.44, 1.31, 2, 0)
	MovementLoopAddLocation(NPC, -34.16, -11.44, 10.74, 2, 0)
	MovementLoopAddLocation(NPC, -32.85, -11.81, 13.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.57, -12.48, 23.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.72, -11.91, 17.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.93, -11.61, 12.62, 2, 0)
	MovementLoopAddLocation(NPC, -30.34, -10.5, -2.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.6, -10.31, -5.64, 2, 0)
	MovementLoopAddLocation(NPC, -47.26, -10.2, -27.67, 2, 0)
	MovementLoopAddLocation(NPC, -72.66, -10.2, -58.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.67, -10.34, 23.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.22, -10.21, 23.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.27, -10.26, 22.12, 2, 0)
	MovementLoopAddLocation(NPC, -62.55, -10.2, 20.44, 2, 0)
	MovementLoopAddLocation(NPC, -83.92, -10.31, 11.68, 2, 0)
	MovementLoopAddLocation(NPC, -88.73, -11.59, -1, 2, 0)
end

