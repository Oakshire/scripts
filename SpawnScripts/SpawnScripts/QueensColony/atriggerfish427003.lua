--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish427003.lua
	Script Purpose	:	Waypoint Path for atriggerfish427003.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:26 
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
	MovementLoopAddLocation(NPC, -38.92, -12.1, -32.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.51, -11.63, -36.13, 2, 0)
	MovementLoopAddLocation(NPC, 2.92, -12.16, -53.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.06, -11.5, -34.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.09, -11.33, -30.2, 2, 0)
	MovementLoopAddLocation(NPC, -33.67, -10.59, -28.4, 2, 0)
	MovementLoopAddLocation(NPC, -34.11, -10.58, -20.44, 2, 0)
	MovementLoopAddLocation(NPC, -38.99, -11.23, -13.43, 2, 0)
	MovementLoopAddLocation(NPC, -36.7, -10.53, -7.35, 2, 0)
	MovementLoopAddLocation(NPC, -29.84, -10.5, -1.61, 2, 0)
	MovementLoopAddLocation(NPC, -24.02, -11.07, 0.98, 2, 0)
	MovementLoopAddLocation(NPC, -21.72, -11.5, 4.06, 2, 0)
	MovementLoopAddLocation(NPC, -20.04, -12.58, 6.09, 2, 0)
	MovementLoopAddLocation(NPC, -16.15, -12.91, 7.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.5, -12.42, 0.57, 2, 0)
	MovementLoopAddLocation(NPC, -20.36, -12.05, -9.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.45, -11.99, -2.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.46, -11.96, -18.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.3, -12.23, -25.36, 2, 0)
end


