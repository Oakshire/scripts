--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425655.lua
	Script Purpose	:	Waypoint Path for ashoalglider425655.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:06 
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
	MovementLoopAddLocation(NPC, -12.89, -11.59, -5.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.35, -11.59, -19.88, 2, 0)
	MovementLoopAddLocation(NPC, -17.65, -11.12, -33.79, 2, 0)
	MovementLoopAddLocation(NPC, -19.7, -12.31, -40.24, 2, 0)
	MovementLoopAddLocation(NPC, -20.52, -12.25, -48.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36, -12.04, -30.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.85, -10.55, -45.74, 2, 0)
	MovementLoopAddLocation(NPC, -38.88, -10.7, -59.95, 2, 0)
	MovementLoopAddLocation(NPC, -40.65, -11.12, -66.49, 2, 0)
	MovementLoopAddLocation(NPC, -37.72, -11.75, -77.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.24, -11.35, -64.71, 2, 0)
	MovementLoopAddLocation(NPC, -46.94, -11.16, -61.46, 2, 0)
	MovementLoopAddLocation(NPC, -53.93, -10.7, -55.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.58, -10.7, -48.52, 2, 0)
	MovementLoopAddLocation(NPC, -33.89, -10.7, -21.76, 2, 0)
	MovementLoopAddLocation(NPC, -27.23, -10.7, -14.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.08, -11.6, -25.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.01, -11.79, -29.4, 2, 0)
	MovementLoopAddLocation(NPC, -16.12, -10.94, -47.03, 2, 0)
	MovementLoopAddLocation(NPC, -5.81, -10.7, -53.41, 2, 0)
	MovementLoopAddLocation(NPC, -2.43, -11.01, -58.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.25, -11.03, -49.75, 2, 0)
	MovementLoopAddLocation(NPC, -5.53, -11.52, -28.16, 2, 0)
	MovementLoopAddLocation(NPC, -10.81, -11.09, -22.37, 2, 0)
	MovementLoopAddLocation(NPC, -16.09, -11.08, -16.62, 2, 0)
	MovementLoopAddLocation(NPC, -25.35, -11.1, 1.14, 2, math.random(10, 20))
end

