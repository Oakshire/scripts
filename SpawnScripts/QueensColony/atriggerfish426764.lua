--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426764.lua
	Script Purpose	:	Waypoint Path for atriggerfish426764.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:44 
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
	MovementLoopAddLocation(NPC, -44.07, -11.93, -59.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.01, -11.72, -55.77, 2, 0)
	MovementLoopAddLocation(NPC, -60.21, -11.26, -52.16, 2, 0)
	MovementLoopAddLocation(NPC, -68.57, -10.38, -44.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.89, -10.55, -44.5, 2, 0)
	MovementLoopAddLocation(NPC, -50.81, -10.2, -34.48, 2, 0)
	MovementLoopAddLocation(NPC, -48.1, -10.17, -28.48, 2, 0)
	MovementLoopAddLocation(NPC, -45.07, -10.2, -24.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.92, -10.62, -35.64, 2, 0)
	MovementLoopAddLocation(NPC, -37.8, -11.38, -40.37, 2, 0)
	MovementLoopAddLocation(NPC, -34.24, -11.26, -45.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.28, -11.83, -37.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.66, -10.66, -32.74, 2, 0)
	MovementLoopAddLocation(NPC, -7.1, -10.4, -23.11, 2, 0)
	MovementLoopAddLocation(NPC, -8.48, -12.53, -14.06, 2, 0)
	MovementLoopAddLocation(NPC, -7.4, -13.26, -8.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.15, -11.81, -4.11, 2, 0)
	MovementLoopAddLocation(NPC, -23.49, -11.97, 7.03, 2, 0)
	MovementLoopAddLocation(NPC, -26.37, -12.47, 11.34, 2, 0)
	MovementLoopAddLocation(NPC, -27.8, -12.99, 18.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.78, -11.6, 1.12, 2, 0)
	MovementLoopAddLocation(NPC, -24.15, -11.52, -17.02, 2, 0)
	MovementLoopAddLocation(NPC, -19.62, -11.94, -22.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.25, -12.45, -29.13, 2, 0)
	MovementLoopAddLocation(NPC, -32.45, -12.77, -34.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.75, -13.07, -40.28, 2, 0)
	MovementLoopAddLocation(NPC, -36.46, -12.07, -42.74, 2, 0)
	MovementLoopAddLocation(NPC, -42.04, -10.48, -47.71, 2, 0)
	MovementLoopAddLocation(NPC, -44, -10.39, -49.09, 2, 0)
	MovementLoopAddLocation(NPC, -47.67, -10.26, -55.16, 2, 0)
	MovementLoopAddLocation(NPC, -52.59, -10.39, -59.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.23, -10.69, -59.33, 2, 0)
	MovementLoopAddLocation(NPC, -46.83, -11.88, -59.38, 2, 0)
end
